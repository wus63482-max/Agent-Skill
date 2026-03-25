param(
    [string]$Date = (Get-Date -Format "yyyy-MM-dd"),
    [string]$ScriptOutputDir,
    [string]$PromptOutputDir,
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

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

function Convert-PathToFileUri {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    return ([System.Uri]([System.IO.Path]::GetFullPath($Path))).AbsoluteUri
}

function Ensure-DateFolder {
    param(
        [Parameter(Mandatory = $true)]
        [string]$OutputDir,
        [Parameter(Mandatory = $true)]
        [datetime]$TargetDate,
        [switch]$DryRun
    )

    $dateFolder = Join-Path $OutputDir $TargetDate.ToString("yyyy-MM-dd")
    if ((-not $DryRun) -and (-not (Test-Path $dateFolder))) {
        New-Item -ItemType Directory -Path $dateFolder -Force | Out-Null
    }

    return $dateFolder
}

function Move-FilesToDateFolder {
    param(
        [Parameter(Mandatory = $true)]
        [string]$OutputDir,
        [Parameter(Mandatory = $true)]
        [datetime]$TargetDate,
        [switch]$DryRun
    )

    if (-not (Test-Path $OutputDir)) {
        throw "Directory not found: $OutputDir"
    }

    $dateFolder = Ensure-DateFolder -OutputDir $OutputDir -TargetDate $TargetDate -DryRun:$DryRun
    $files = Get-ChildItem -Path $OutputDir -Filter *.md -File |
        Where-Object { $_.LastWriteTime.Date -eq $TargetDate.Date } |
        Sort-Object LastWriteTime, Name

    foreach ($file in $files) {
        $destination = Join-Path $dateFolder $file.Name
        if ($DryRun) {
            Write-Host "[dry-run] Move $($file.FullName) -> $destination"
            continue
        }

        Move-Item -Path $file.FullName -Destination $destination -Force
    }

    return @{
        DateFolder = $dateFolder
        Count = @($files).Count
    }
}

function Update-PromptSourceLinks {
    param(
        [Parameter(Mandatory = $true)]
        [string]$PromptDateDir,
        [Parameter(Mandatory = $true)]
        [string]$ScriptDateDir,
        [switch]$DryRun
    )

    if ((-not (Test-Path $PromptDateDir)) -or (-not (Test-Path $ScriptDateDir))) {
        return 0
    }

    $updatedCount = 0
    $pattern = 'file:///[^\)\r\n]*?/tiktok_viral_script_skill_export/output/(?:\d{4}-\d{2}-\d{2}/)?([^)\r\n/]+\.md)'

    foreach ($promptFile in Get-ChildItem -Path $PromptDateDir -Filter *.md -File) {
        $original = Get-Content -Path $promptFile.FullName -Raw -Encoding utf8
        $updated = [regex]::Replace(
            $original,
            $pattern,
            {
                param($match)

                $scriptName = $match.Groups[1].Value
                $archivedScriptPath = Join-Path $ScriptDateDir $scriptName
                if (Test-Path $archivedScriptPath) {
                    return Convert-PathToFileUri -Path $archivedScriptPath
                }

                return $match.Value
            }
        )

        if ($updated -eq $original) {
            continue
        }

        $updatedCount += 1
        if ($DryRun) {
            Write-Host "[dry-run] Update source link in $($promptFile.FullName)"
            continue
        }

        Set-Content -Path $promptFile.FullName -Value $updated -Encoding utf8
    }

    return $updatedCount
}

try {
    $targetDate = [datetime]::ParseExact($Date, "yyyy-MM-dd", [System.Globalization.CultureInfo]::InvariantCulture)
}
catch {
    throw "Date must be in yyyy-MM-dd format. Received: $Date"
}

if (-not $ScriptOutputDir) {
    $scriptSkillDir = Find-ChildDirectory -BasePath $root -NamePattern "tiktok_viral_script_skill_export"
    $ScriptOutputDir = Join-Path $scriptSkillDir "output"
}

if (-not $PromptOutputDir) {
    $promptSkillDir = Find-ChildDirectory -BasePath $root -NamePattern "AI*skill"
    $PromptOutputDir = Join-Path $promptSkillDir "output"
}

$scriptResult = Move-FilesToDateFolder -OutputDir $ScriptOutputDir -TargetDate $targetDate -DryRun:$DryRun
$promptResult = Move-FilesToDateFolder -OutputDir $PromptOutputDir -TargetDate $targetDate -DryRun:$DryRun
$fixedLinks = Update-PromptSourceLinks -PromptDateDir $promptResult.DateFolder -ScriptDateDir $scriptResult.DateFolder -DryRun:$DryRun

Write-Host "Archive date: $($targetDate.ToString('yyyy-MM-dd'))"
Write-Host "Script folder: $($scriptResult.DateFolder) ($($scriptResult.Count) file(s) moved)"
Write-Host "Prompt folder: $($promptResult.DateFolder) ($($promptResult.Count) file(s) moved)"
Write-Host "Prompt source links updated: $fixedLinks"
