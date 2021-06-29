# Refresh PATH variable
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

# Import-Module -Name Terminal-Icons
Import-Module posh-alias
Import-Module -Name PoshDirTitle
Import-Module oh-my-posh
Set-PoshPrompt -Theme bubbles
# Set-PoshPrompt -Theme ~/.turtlebasket_omp.json

Remove-Alias rm
Remove-Alias cp
Remove-Alias mv
Remove-Alias cat
Set-Alias vim gvim
# Set-Alias vim nvim-qt
Set-Alias nb 'C:\Program Files\Git\bin\bash.exe'
Set-Alias wb bash
# Add-Alias ls 'ls.exe --color'
Set-Alias lsu ls.exe
Set-Alias d dir

# function ls($params) {
# 	try {
# 		ls $params
# 	}
# 	catch {
# 		ls.exe $params
# 	}
# }

Set-PSReadLineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Invoke-Expression (&starship init powershell)
