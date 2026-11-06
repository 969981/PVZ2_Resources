# Initialize pinned tools after a normal git clone/pull.
# Usage: .\scripts\tools\setup-tools.ps1 [-Only PopStudio,LibWindPop] [-UpdateRemote]
[CmdletBinding()]
param(
    [string[]] $Only = @(),
    [switch] $UpdateRemote
)
$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$manifest = Get-Content -LiteralPath (Join-Path $root 'tools\upstreams.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$all = @($manifest.tools)
$selected = @($all)
if ($Only.Count -gt 0) {
    $selected = @($all | Where-Object { $Only -contains $_.name })
    $missing = @($Only | Where-Object { $_ -notin @($all | ForEach-Object { $_.name }) })
    if ($missing.Count -gt 0) { throw "Unknown tools: $($missing -join ', ')" }
}
if ($UpdateRemote) {
    Write-Warning 'Updates upstream checkouts. Review git diff, update tools/upstreams.json pins and run tests before committing.'
}
& git -C $root submodule sync --recursive
if ($LASTEXITCODE -ne 0) { throw 'git submodule sync failed' }
$arguments = @('-C', $root, 'submodule', 'update', '--init', '--recursive', '--progress')
if ($UpdateRemote) { $arguments += '--remote' }
$arguments += '--'
$arguments += @($selected | ForEach-Object { $_.path })
& git @arguments
if ($LASTEXITCODE -ne 0) { throw 'git submodule update failed' }
& git -C $root submodule status -- @($selected | ForEach-Object { $_.path })
if ($LASTEXITCODE -ne 0) { throw 'git submodule status failed' }
if (-not $UpdateRemote) {
    & python (Join-Path $root 'scripts\tools\verify_tools.py')
    if ($LASTEXITCODE -ne 0) { throw 'tools registry verification failed' }
}
Write-Host "Initialized $($selected.Count) selected tools."
