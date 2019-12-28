#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



~VK07::
;MsgBox, %A_thisHotKey%
KeyWait, VK07
if (A_PriorHotkey = "~VK07" && A_TimeSincePriorHotkey < 1000 && A_ThisHotkey = "~VK07") {
	Sleep, 300
	SendInput, #!{PrintScreen}
	return
}
return