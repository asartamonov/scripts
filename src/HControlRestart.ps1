#look at process named HControl
$HCprocess = Get-Process HControl -ErrorAction SilentlyContinue

#check if the process is running shut it down
if ($HCprocess.Id -ne $null) {
    Stop-Process $HCprocess.Id
}

#wait 5 seconds then restart process
Start-Sleep -s 5

#start process back
Start-Process -FilePath "C:\Program Files (x86)\ASUS\ATK Package\ATK Hotkey\HControl.exe"