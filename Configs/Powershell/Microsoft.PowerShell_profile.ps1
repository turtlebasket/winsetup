# Refresh PATH variable
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

# Other env vars
$env:NEOVIM_CONFIG = $env:LOCALAPPDATA+"/nvim/init.vim"

Import-Module -Name Terminal-Icons
Import-Module posh-alias
Import-Module -Name PoshDirTitle
Import-Module oh-my-posh
Set-PoshPrompt -Theme stelbent.minimal
# Set-PoshPrompt -Theme star
# Set-PoshPrompt -Theme ~/.turtlebasket_omp2.json

Remove-Alias rm
Remove-Alias cp
Remove-Alias mv
Remove-Alias cat
Set-Alias vim gvim
# Set-Alias vim nvim-qt
Set-Alias nb 'C:\Program Files\Git\bin\bash.exe'
Set-Alias wb bash
Add-Alias lsu 'ls.exe --color'
Set-Alias l dir
Set-Alias d dir

# Path refreshing
Add-Alias refresh '$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User"); echo "Refreshed PATH."'

Set-PSReadLineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Invoke-Expression (&starship init powershell)
