# SETUP SCRIPT. RUN IN POWERSHELL CORE.

# Disable Telemetry/Connected Experience Service
Set-Service DiagTrack -StartupType Disabled

# Install Modules
Install-Module PSReadLine -Scope CurrentUser
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

# Install Chocolatey
Write-Output "Install Chocolatey."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Get MesloLGS NerdFont
Write-Output "Install MesloLGS NerdFont"
iwr "https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf" -o MesloLGS_NF.ttf ; .\MesloLGS_NF.ttf

# WSL2 coming soon to non-insiders windows releases. Figure out installation once it's here.
