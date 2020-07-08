# Alias Management
Remove-Alias rm
Set-Alias cat bat
Set-Alias vim gvim
Set-Alias re refreshenv
# Set-Alias ls lsd

# Var Management
$env:BAT_PAGER = 'auto'

# Theme/Readline stuff
Set-PSReadLineOption -EditMode Emacs
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
