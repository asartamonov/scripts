#request system for process named GWX and silently continue if not present
$gwxRunning = Get-Process GWX -ErrorAction SilentlyContinue

#shut it down if GWX launched
if ($gwxRunning.Id -ne $null) {Stop-Process $gwxRunning.Id}
