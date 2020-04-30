# Install Chocolatey

Write-Output "Install Chocolatey."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Install preferred applications."
choco.exe install -y vim sharex

# WSL2 coming soon to non-insiders windows releases. Figure out installation once it's here.
