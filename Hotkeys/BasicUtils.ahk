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

#IfWinActive ; Minimize Window
!-::WinMinimize, A
#If

#IfWinActive ; Minimize All
!+-::WinMinimizeAll, A
#If

#IfWinActive ; Toggle Maximization State
!=::
WinGet, winstate, MinMax, A
If winstate = 0
    WinMaximize, A
Else
    WinRestore, A
return
#If

; Application launchers

^!t::Run, wt.exe ; Windows Terminal
