param(
    [string]$ScriptFile,
    [string]$PromptFile,
    [string]$Date = (Get-Date -Format "yyyy-MM-dd"),
    [string]$Title = "AI内容同步",
    [switch]$CreateIfMissing = $true,
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$pythonScript = Join-Path $PSScriptRoot "save_to_notion_calendar.py"
$envScript = Join-Path $PSScriptRoot "notion.env.ps1"
if (Test-Path $envScript) {
    . $envScript
}

function Find-ChildDirectory {
    param(
        [Parameter(Mandatory = $true)]
        [string]$BasePath,
        [Parameter(Mandatory = $true)]
        [string]$NamePattern
    )

    $directory = Get-ChildItem -Path $BasePath -Directory |
        Where-Object { $_.Name -like $NamePattern } |
        Select-Object -First 1

    if (-not $directory) {
        throw "Directory matching pattern not found: $NamePattern"
    }

    return $directory.FullName
}

function Get-LatestMarkdownFile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Directory
    )

    if (-not (Test-Path $Directory)) {
        throw "Directory not found: $Directory"
    }

    $topLevelFiles = Get-ChildItem -Path $Directory -Filter *.md -File
    $datedFiles = Get-ChildItem -Path $Directory -Directory |
        Where-Object { $_.Name -match '^\d{4}-\d{2}-\d{2}$' } |
        ForEach-Object { Get-ChildItem -Path $_.FullName -Filter *.md -File }

    $file = @($topLevelFiles) + @($datedFiles) |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1

    if (-not $file) {
        throw "No markdown file found in: $Directory"
    }

    return $file.FullName
}

function Get-DateScopedMarkdownFile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Directory,
        [Parameter(Mandatory = $true)]
        [string]$Date
    )

    if (-not (Test-Path $Directory)) {
        throw "Directory not found: $Directory"
    }

    $dateFolder = Join-Path $Directory $Date
    if (Test-Path $dateFolder) {
        $datedFile = Get-ChildItem -Path $dateFolder -Filter *.md -File |
            Sort-Object LastWriteTime -Descending |
            Select-Object -First 1
        if ($datedFile) {
            return $datedFile.FullName
        }
    }

    $topLevelDateFile = Get-ChildItem -Path $Directory -Filter *.md -File |
        Where-Object { $_.LastWriteTime.ToString("yyyy-MM-dd") -eq $Date } |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1
    if ($topLevelDateFile) {
        return $topLevelDateFile.FullName
    }

    return Get-LatestMarkdownFile -Directory $Directory
}

$scriptSkillDir = Find-ChildDirectory -BasePath $root -NamePattern "tiktok_viral_script_skill_export"
$promptSkillDir = Find-ChildDirectory -BasePath $root -NamePattern "AI*skill"
$scriptOutputDir = Join-Path $scriptSkillDir "output"
$promptOutputDir = Join-Path $promptSkillDir "output"

if (-not $ScriptFile) {
    $ScriptFile = Get-DateScopedMarkdownFile -Directory $scriptOutputDir -Date $Date
}

if (-not $PromptFile) {
    $PromptFile = Get-DateScopedMarkdownFile -Directory $promptOutputDir -Date $Date
}

$arguments = @(
    $pythonScript
    "--script-file"
    $ScriptFile
    "--prompt-file"
    $PromptFile
    "--date"
    $Date
    "--title"
    $Title
)

if ($CreateIfMissing) {
    $arguments += "--create-if-missing"
}

if ($DryRun) {
    $arguments += "--dry-run"
}

Write-Host "Script file: $ScriptFile"
Write-Host "Prompt file: $PromptFile"
Write-Host "Target date: $Date"

python @arguments
