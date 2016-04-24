$gwxRunning = Get-Process GWX -ErrorAction SilentlyContinue
if ($gwxRunning.Id -ne $null) {Stop-Process $gwxRunning.Id}
