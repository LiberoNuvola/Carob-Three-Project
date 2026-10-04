$ErrorActionPreference = 'Stop'

$repo = (Get-Location).Path
if (-not (Test-Path (Join-Path $repo '.git'))) {
    throw "Run this script from the root of the local Carob-Three-Project repository."
}

$source = Split-Path -Parent $MyInvocation.MyCommand.Path
$files = @(
    'README.md',
    '.gitignore',
    'docs/ARCHITECTURE.md',
    'research/README.md',
    'experiments/README.md',
    'profiles/carob-three-machine.yaml'
)

foreach ($file in $files) {
    $src = Join-Path $source $file
    $dst = Join-Path $repo $file
    $parent = Split-Path -Parent $dst
    if (-not (Test-Path $parent)) { New-Item -ItemType Directory -Force $parent | Out-Null }
    Copy-Item -Force $src $dst
}

Write-Host "Carob Three bootstrap applied."
Write-Host "Review with: git diff"
Write-Host "Commit with: git add . && git commit -m \"docs: establish Carob Three 2026 foundation\""
