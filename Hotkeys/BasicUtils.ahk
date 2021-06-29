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

; #IfWinActive ; Minimize All
; !+-::WinMinimizeAll, A
; #If

#IfWinActive ; Toggle Maximization State
!=::
WinGet, winstate, MinMax, A
If winstate = 0
    WinMaximize, A
Else
    WinRestore, A
return
#If

!^+c::
Clipboard := ""
MsgBox, Cleared clipboard.
return

#IfWinActive ; Close current window
!q::WinClose, A


; Restart explorer.exe
!F2::Run, %comspec% /c taskkill /f /IM explorer.exe & explorer.exe


; Application launchers

^!t::Run, wt.exe ; Windows Terminal
^!v::Run, gvim.bat ; gVim

^!p:: ; Powershell as Administrator
Run *RunAs powershell
RunAs
return
