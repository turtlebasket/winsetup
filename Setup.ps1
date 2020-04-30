# Install Chocolatey

Write-Output "Install PowerShell."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco.exe install -y vim

# WSL2 coming soon to non-insiders windows releases. Figure out installation once it's here.
