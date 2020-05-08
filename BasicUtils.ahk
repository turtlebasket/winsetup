;   _            _   _     _             _       _   _    
;  | |_ _  _ _ _| |_| |___| |__  __ _ __| |_____| |_( )___
;  |  _| || | '_|  _| / -_) '_ \/ _` (_-< / / -_)  _|/(_-<
;   \__|\_,_|_|  \__|_\___|_.__/\__,_/__/_\_\___|\__| /__/
;  | |_  ___| |_| |_____ _  _ ___                         
;  | ' \/ _ \  _| / / -_) || (_-<                         
;  |_||_\___/\__|_\_\___|\_, /__/                         
;                        |__/                             

; AHK boilerplate

#NoEnv
#Warn 
SendMode Input  
SetWorkingDir %A_ScriptDir%  

; Window management

#IfWinActive
!-::WinMinimize, A
return

#IfWinActive
!+-::WinMinimizeAll, A

; Application launchers

^!t::Run, wt.exe ; Windows Terminal
return
