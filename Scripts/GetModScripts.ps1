mkdir Debloaters
iwr "https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10DebloaterGUI.ps1" -o Debloaters/Windows10DebloaterGUI.ps1
scoop install windowsspyblocker
Write-Output @"
Actions:
1. Download Windows 10 Debloater GUI (https://github.com/Sycnex/Windows10Debloater)
2. Install WindowsSpyBlocker via scoop (https://github.com/crazy-max/WindowsSpyBlocker)
"@
