Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster
Remove-Alias ls
Remove-Alias rm
Set-Alias cat bat
Set-Alias vim gvim
Set-Alias gb 'C:\Program Files\Git\bin\bash.exe'
Set-Alias wb bash

Set-PSReadLineOption -EditMode Emacs
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
