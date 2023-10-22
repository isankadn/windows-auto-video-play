# Get the first .mp4 file in the script's directory
$mediaFile = Get-ChildItem -Path $PSScriptRoot -Filter "*.mp4" | Select-Object -First 1

if ($mediaFile) {
    $mediaFilePath = $mediaFile.FullName
}
else {
    Write-Error "No .mp4 file found in the script's directory."
    exit
}

# Minimize all windows using COM
$shell = New-Object -ComObject Shell.Application
$shell.MinimizeAll()
Start-Sleep -Seconds 2

# Start the Media Player
$mediaPlayerPath = "C:\Program Files\WindowsApps\Microsoft.ZuneMusic_11.2308.3.0_x64__8wekyb3d8bbwe\Microsoft.Media.Player.exe"
cmd /c start "" "$mediaPlayerPath" "$mediaFilePath"
Start-Sleep -Seconds 5

$mediaPlayerProcess = Get-Process | Where-Object { $_.MainWindowTitle -like "*Media Player*" }

if ($mediaPlayerProcess) {
    $wshell = New-Object -ComObject wscript.shell
    # Use the window title to activate
    $wshell.AppActivate("Media Player")
    Start-Sleep -Seconds 2  # Increased sleep time

    # Load the necessary assembly
	Add-Type -AssemblyName System.Windows.Forms
	
	Start-Sleep -Seconds 2  # Increased sleep time

	# Send F11 to maximize the Media Player
	[System.Windows.Forms.SendKeys]::SendWait("{F11}")
	Start-Sleep -Seconds 2  # Increased sleep time
	[System.Windows.Forms.SendKeys]::SendWait("^{t}")
}

$logPath = Join-Path $PSScriptRoot "log.txt"
Add-Content -Path $logPath -Value "Actions performed at $(Get-Date)"



