# Notion 起号日历自动同步

这个目录提供了一条最轻量的自动化链路:

1. 你的脚本 skill 产出一个 `.md`
2. 你的视频提示词 skill 再产出一个 `.md`
3. `save_to_notion_calendar.py` 按日期查找 Notion 日历数据库中的当天页面
4. 把两份内容直接追加到当天页面的正文里

## 适用前提

你的 Notion「起号日历」需要是一个数据库，并且每个日期对应一条页面记录。

最少需要这些内容:

- 一个日期字段，比如 `Date`
- 一个标题字段，比如 `Name`

## 1. 创建 Notion 集成并共享数据库

1. 在 Notion 创建一个 integration
2. 拿到 `Internal Integration Token`
3. 把你的「起号日历」数据库分享给这个 integration
4. 从数据库链接里拿到 `database_id`

## 2. 配置环境变量

PowerShell 示例:

```powershell
$env:NOTION_TOKEN="secret_xxx"
$env:NOTION_DATABASE_ID="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
$env:NOTION_DATE_PROPERTY="Date"
$env:NOTION_TITLE_PROPERTY="Name"
```

如果你的字段名不一样，把上面的值改成你 Notion 里的真实字段名。

更省事的做法:

1. 复制 [notion.env.example.ps1](c:\Users\FLY\Desktop\Agent%20Skill\automation\notion.env.example.ps1)
2. 重命名为 `automation/notion.env.ps1`
3. 把里面的值改成你自己的

这样以后跑同步时会自动加载，不用每次重新设置环境变量。

## 3. 手动执行一次

```powershell
python .\automation\save_to_notion_calendar.py `
  --script-file ".\tiktok_viral_script_skill_export\output\2026-03-16\198h_electric_sharpener_script_seese_blower.md" `
  --prompt-file ".\AI视频提示词生成skill\output\2026-03-16\198h_electric_sharpener_seese_blower_seed2_pov.md" `
  --date "2026-03-16" `
  --create-if-missing
```

## 4. 接到你的生成流程里

最实用的接法是让“生成脚本”和“生成视频提示词”跑完后，立刻再执行一次同步脚本。

PowerShell 示例:

```powershell
python .\automation\save_to_notion_calendar.py `
  --script-file ".\tiktok_viral_script_skill_export\output\当天日期\当天脚本.md" `
  --prompt-file ".\AI视频提示词生成skill\output\当天日期\当天提示词.md" `
  --create-if-missing
```

## 5. 每天先归档，再同步

如果你当天的文件还停留在两个 `output` 根目录里，可以先跑一次 [archive_daily_outputs.ps1](c:\Users\FLY\Desktop\Agent%20Skill\automation\archive_daily_outputs.ps1)：

```powershell
.\automation\archive_daily_outputs.ps1
```

指定日期预演：

```powershell
.\automation\archive_daily_outputs.ps1 -Date "2026-03-17" -DryRun
```

这个脚本会做 3 件事：

- 把当天生成的脚本移动到 `tiktok_viral_script_skill_export/output/YYYY-MM-DD/`
- 把当天生成的视频提示词移动到 `AI视频提示词生成skill/output/YYYY-MM-DD/`
- 自动修正视频提示词文件里的 `源脚本` 本地链接

## 6. 一键同步今天内容

如果你只想每天一条命令直接同步，可以用 [run_daily_notion_sync.ps1](c:\Users\FLY\Desktop\Agent%20Skill\automation\run_daily_notion_sync.ps1)。

默认行为:

- 自动加载 `automation/notion.env.ps1`
- 优先寻找两个 output 目录下与目标日期同名文件夹里的 `.md`
- 如果当天文件夹不存在，再回退到最新的 `.md`
- 默认同步到今天日期
- 默认当天页不存在时自动创建

直接执行:

```powershell
.\automation\run_daily_notion_sync.ps1
```

指定日期:

```powershell
.\automation\run_daily_notion_sync.ps1 -Date "2026-03-16"
```

指定文件:

```powershell
.\automation\run_daily_notion_sync.ps1 `
  -ScriptFile ".\tiktok_viral_script_skill_export\output\你的脚本.md" `
  -PromptFile ".\AI视频提示词生成skill\output\你的视频提示词.md"
```

预演但不真的写入:

```powershell
.\automation\run_daily_notion_sync.ps1 -DryRun
```

## 同步后的写入位置

脚本只做一件事:

- 在当天日期页面正文末尾追加一个新模块

每次运行都会新增一块，不会覆盖你之前写的内容，也不会要求你在数据库里额外创建 `Script` 或 `Video Prompts` 字段。

## 常见问题

### 1. 为什么找不到当天页面

通常是这几种原因:

- `NOTION_DATE_PROPERTY` 字段名不对
- 当天那条记录还没创建
- 数据库没共享给 integration

如果你的日历里不是提前建好每天一条记录，就加 `--create-if-missing`。

### 2. 为什么正文里会看到 `Script` / `Video Prompts`

这是自动新增模块里的小标题，用来把两部分内容分开，方便你在当天页面里直接看和复制。

## 推荐你下一步这样接

如果你想做成完全自动:

1. 先固定输出文件名规则，比如按日期命名
2. 让脚本生成 skill 输出到固定目录
3. 让视频提示词 skill 也输出到固定目录
4. 最后执行这个同步脚本

如果你愿意，我下一步可以继续帮你补两种版本:

- `全自动工作流版`：把“生成脚本 -> 生成视频提示词 -> 写入 Notion”串成一条命令
