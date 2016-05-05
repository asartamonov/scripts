#restart explorer.exe if it works incorrectly

#obtain process object and assign it to variable $exp
$exp = Get-Process explorer

#stop the process 
Stop-Process $exp

#wait 1 sec than start explorer.exe back
Start-Sleep -s 1
Start-Process 'C:\Windows\explorer.exe'
