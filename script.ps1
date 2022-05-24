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
.\wget.exe $si1
.\wget.exe $si2
.\wget.exe $si3
.\7.exe e procexp64.zip
.\7.exe e autoruns.zip
.\7.exe e procmon.zip
Write-Host "https://github.com/fgclue/vbPlus" | Out-File vbplusl.txt -append