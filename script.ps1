Write-Host "[!] folder.make"
mkdir sttW
cd sttW
Write-Host "[!] var.si1.set"
$si1 = "https://download.sysinternals.com/files/ProcessExplorer.zip"
Write-Host "[!] var.si2.set"
$si2 = "https://download.sysinternals.com/files/Autoruns.zip"
Write-Host "[!] var.si3.set"
$si3 = "https://download.sysinternals.com/files/ProcessMonitor.zip"
Write-Host "[!] get.sysinternals;1,2,3:"
Invoke-WebRequest -Uri $si1 -OutFile procexp64.zip
Invoke-WebRequest -Uri $si2 -OutFile autoruns.zip
Invoke-WebRequest -Uri $si3 -OutFile procmon.zip
.\7.exe e procexp64.zip
.\7.exe e autoruns.zip
.\7.exe e procmon.zip
Write-Host "https://github.com/fgclue/vbPlus" | Out-File vbplusl.txt -append