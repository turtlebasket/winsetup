Import-Module -Name Terminal-Icons
Import-Module posh-alias
# Import-Module oh-my-posh
# Set-PoshPrompt -Theme ~/.turtlebasket_omp.json
# $ThemeSettings.PromptSymbols.SegmentForwardSymbol = [char]::ConvertFromUtf32("0xE0BC")

Remove-Alias rm
Remove-Alias cp
Remove-Alias mv
Set-Alias vim gvim
Set-Alias nb 'C:\Program Files\Git\bin\bash.exe'
Set-Alias wb bash
Add-Alias ls 'ls.exe --color'

Set-PSReadLineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Invoke-Expression (&starship init powershell)
