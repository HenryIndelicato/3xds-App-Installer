# GitHub raw URL of the HTML file
$url = "https://raw.githubusercontent.com/HenryIndelicato/3xds-App-Installer/refs/heads/main/index.html"

# Temporary file path to save the HTML
$tempFilePath = Join-Path -Path $env:TEMP -ChildPath "index.html"

try {
    # Download the HTML file
    Invoke-WebRequest -Uri $url -OutFile $tempFilePath -ErrorAction Stop

    # Open the HTML file in default browser
    Start-Process $tempFilePath
}
catch {
    Write-Host "Failed to download or open the HTML file:" -ForegroundColor Red
    Write-Host "Error: $_" -ForegroundColor Red
    Exit 1
}