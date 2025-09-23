$ProgressPreference = 'SilentlyContinue'
$zipUrl = "https://nx.st/c/dependencies.zip"
$zipPath = "$env:TEMP\downloaded.zip"               
$extractPath = ".\TestPipeline"               

if (!(Test-Path -Path $extractPath)) {
    New-Item -ItemType Directory -Path $extractPath | Out-Null
}

Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath

Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

Write-Host "Downloaded and extracted to: $extractPath"