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


; Application launchers (deprecated)

; ^!t::Run, wt.exe ; Windows Terminal
; ^!v::Run, gvim.bat ; gVim

^!p:: ; Powershell as Administrator
Run *RunAs powershell
RunAs
return

; App-specific Conditional Window Switching

FocusOrOpen(name, launchExec:=-1)
{
	WinGet cdWindows, List

	found = False
	Loop %cdWindows%
	{
		w := cdWindows%A_Index%
		WinGet pn, ProcessName, ahk_id %w%
		If (pn = name) {
			WinActivate, ahk_id %w%
			found = True
			Return
		}
	}
	If (launchExec = -1)
		Run, %name%
	Else
		Run, %launchExec%
}

^!e::FocusOrOpen("gvim.exe", "gvim.bat")
^!v::FocusOrOpen("code.exe", "code.cmd")
^!t::FocusOrOpen("windowsterminal.exe", "wt.exe")
^!o::FocusOrOpen("Obsidian.exe", "Obsidian")
^!w::FocusOrOpen("brave.exe")

