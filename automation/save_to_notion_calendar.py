#!/usr/bin/env python3
"""Sync generated script and video prompts into a Notion calendar page."""

from __future__ import annotations

import argparse
import json
import os
import sys
import urllib.error
import urllib.request
from dataclasses import dataclass
from datetime import date, datetime
from pathlib import Path
from typing import Any, Iterable


NOTION_VERSION = "2022-06-28"
AUTO_SYNC_START = "[AUTO-SYNC]"
AUTO_SYNC_END = "[/AUTO-SYNC]"
TEXT_CHUNK_SIZE = 1800


@dataclass
class Config:
    token: str
    database_id: str
    date_property: str
    title_property: str


class NotionError(RuntimeError):
    pass


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Save generated script and video prompts into a Notion calendar day page."
    )
    parser.add_argument("--script-file", required=True, help="Path to the generated script markdown file.")
    parser.add_argument("--prompt-file", required=True, help="Path to the generated video prompt markdown file.")
    parser.add_argument(
        "--date",
        default=date.today().isoformat(),
        help="Target date in YYYY-MM-DD format. Defaults to today.",
    )
    parser.add_argument(
        "--title",
        default="AI内容同步",
        help="Title used inside the synced Notion section.",
    )
    parser.add_argument(
        "--create-if-missing",
        action="store_true",
        help="Create a new calendar page if the target date does not already exist.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print the intended action without writing to Notion.",
    )
    return parser.parse_args()


def load_config() -> Config:
    token = os.getenv("NOTION_TOKEN", "").strip()
    database_id = os.getenv("NOTION_DATABASE_ID", "").strip()
    if not token or not database_id:
        raise NotionError("Missing NOTION_TOKEN or NOTION_DATABASE_ID environment variable.")

    return Config(
        token=token,
        database_id=database_id,
        date_property=os.getenv("NOTION_DATE_PROPERTY", "Date").strip() or "Date",
        title_property=os.getenv("NOTION_TITLE_PROPERTY", "Name").strip() or "Name",
    )


def read_text(path_str: str) -> str:
    path = Path(path_str)
    if not path.exists():
        raise NotionError(f"File not found: {path}")
    return path.read_text(encoding="utf-8")


def notion_request(config: Config, method: str, path: str, payload: dict[str, Any] | None = None) -> dict[str, Any]:
    url = f"https://api.notion.com/v1{path}"
    data = None if payload is None else json.dumps(payload).encode("utf-8")
    request = urllib.request.Request(url=url, data=data, method=method)
    request.add_header("Authorization", f"Bearer {config.token}")
    request.add_header("Notion-Version", NOTION_VERSION)
    request.add_header("Content-Type", "application/json")

    try:
        with urllib.request.urlopen(request, timeout=30) as response:
            return json.loads(response.read().decode("utf-8"))
    except urllib.error.HTTPError as exc:
        body = exc.read().decode("utf-8", errors="replace")
        raise NotionError(f"Notion API error {exc.code}: {body}") from exc
    except urllib.error.URLError as exc:
        raise NotionError(f"Network error while calling Notion: {exc}") from exc


def query_page_by_date(config: Config, target_date: str) -> dict[str, Any] | None:
    payload = {
        "filter": {
            "property": config.date_property,
            "date": {
                "equals": target_date,
            },
        },
        "page_size": 10,
    }
    result = notion_request(config, "POST", f"/databases/{config.database_id}/query", payload)
    matches = result.get("results", [])
    if not matches:
        return None
    return matches[0]


def create_page(config: Config, target_date: str) -> dict[str, Any]:
    payload = {
        "parent": {"database_id": config.database_id},
        "properties": {
            config.title_property: {
                "title": [{"type": "text", "text": {"content": target_date}}],
            },
            config.date_property: {
                "date": {"start": target_date},
            },
        },
    }
    return notion_request(config, "POST", "/pages", payload)


def split_text(text: str, size: int) -> list[str]:
    if not text:
        return [""]

    chunks: list[str] = []
    current = []
    current_len = 0

    for line in text.splitlines(keepends=True):
        if len(line) > size:
            if current:
                chunks.append("".join(current))
                current = []
                current_len = 0
            for index in range(0, len(line), size):
                chunks.append(line[index : index + size])
            continue

        if current_len + len(line) > size and current:
            chunks.append("".join(current))
            current = [line]
            current_len = len(line)
        else:
            current.append(line)
            current_len += len(line)

    if current:
        chunks.append("".join(current))

    return chunks


def append_sync_module(
    config: Config,
    page_id: str,
    section_title: str,
    target_date: str,
    script_text: str,
    prompt_text: str,
) -> None:
    new_blocks = build_sync_blocks(section_title, target_date, script_text, prompt_text)
    for chunk in chunk_blocks(new_blocks, 100):
        notion_request(config, "PATCH", f"/blocks/{page_id}/children", {"children": chunk})


def build_sync_blocks(
    section_title: str,
    target_date: str,
    script_text: str,
    prompt_text: str,
) -> list[dict[str, Any]]:
    synced_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    blocks: list[dict[str, Any]] = [
        divider_block(),
        heading_block(2, f"{section_title} {target_date}"),
        paragraph_block(f"Updated at: {synced_at}"),
        heading_block(3, "Script"),
    ]

    blocks.extend(code_blocks(script_text))
    blocks.append(heading_block(3, "Video Prompts"))
    blocks.extend(code_blocks(prompt_text))
    return blocks


def heading_block(level: int, text: str) -> dict[str, Any]:
    block_type = f"heading_{level}"
    return {
        "object": "block",
        "type": block_type,
        block_type: {
            "rich_text": [{"type": "text", "text": {"content": text}}],
        },
    }


def paragraph_block(text: str) -> dict[str, Any]:
    return {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
            "rich_text": [{"type": "text", "text": {"content": text}}],
        },
    }


def divider_block() -> dict[str, Any]:
    return {
        "object": "block",
        "type": "divider",
        "divider": {},
    }


def code_blocks(text: str) -> list[dict[str, Any]]:
    blocks = []
    for chunk in split_text(text, TEXT_CHUNK_SIZE):
        blocks.append(
            {
                "object": "block",
                "type": "code",
                "code": {
                    "language": "plain text",
                    "rich_text": [{"type": "text", "text": {"content": chunk}}],
                },
            }
        )
    return blocks


def chunk_blocks(blocks: list[dict[str, Any]], size: int) -> list[list[dict[str, Any]]]:
    return [blocks[index : index + size] for index in range(0, len(blocks), size)]


def main() -> int:
    args = parse_args()
    script_text = read_text(args.script_file)
    prompt_text = read_text(args.prompt_file)

    if args.dry_run:
        print(f"[dry-run] Script file loaded: {args.script_file} ({len(script_text)} chars)")
        print(f"[dry-run] Prompt file loaded: {args.prompt_file} ({len(prompt_text)} chars)")
        print(f"[dry-run] Would sync date: {args.date}")
        print("[dry-run] No Notion API lookup or write was attempted.")
        return 0

    config = load_config()

    page = query_page_by_date(config, args.date)
    if page is None:
        if not args.create_if_missing:
            raise NotionError(
                f"No Notion page found for {args.date}. Use --create-if-missing to create one."
            )
        if args.dry_run:
            print(f"[dry-run] Would create a new Notion page for {args.date}")
            return 0
        page = create_page(config, args.date)

    page_id = page["id"]
    if args.dry_run:
        print(f"[dry-run] Would sync page {page_id} for date {args.date}")
        return 0

    append_sync_module(config, page_id, args.title, args.date, script_text, prompt_text)

    print(f"Appended a new script/prompt module to Notion page {page_id} for {args.date}")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except NotionError as exc:
        print(f"Error: {exc}", file=sys.stderr)
        raise SystemExit(1)
