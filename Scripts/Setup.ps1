# Install Chocolatey

Write-Output "Install Chocolatey."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Get preferred applications via Chocolatey
Write-Output "Install preferred applications."
choco.exe install -y Invoke-Command {Get-Content ./packages.txt}

# Get MesloLGS NerdFont
Write-Output "Install MesloLGS NerdFont"
curl https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf -o MesloLGS_NF.ttf ; .\MesloLGS_NF.ttf

# WSL2 coming soon to non-insiders windows releases. Figure out installation once it's here.
