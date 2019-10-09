#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

; Disable normal space behavior
$Space::
if GetKeyState("CapsLock", "P")
	return
Send, {Space} ;
return

; HJKL
CapsLock & h::
if GetKeyState("Space", "P") {
	Send, {Left}
	return
} else {
	Send {Ctrl Down}{Left}{Ctrl Up}
	return
}

CapsLock & j::
Send {Down}
return

CapsLock & k::
Send {Up}
return

CapsLock & l::
if GetKeyState("Space", "P") {
	Send, {Right}
	return
} else {
	Send {Ctrl Down}{Right}{Ctrl Up}
	return
}

; ; => Enter
CapsLock & `;::
Send {Enter}
return

CapsLock & p::
if GetKeyState("Space", "P") {
	Send {Ctrl Down}{Backspace}{Ctrl Up}
	return
} else {
	Send, {Backspace}
	return
}

; Backspace => CtrlBackspace
CapsLock & Backspace::
Send {Ctrl Down}{Backspace}{Ctrl Up}
return

; Close windows
CapsLock & w::
Send {Ctrl Down}w{Ctrl Up}
return

; Visual studio, S/F => navigate backwards/forwards
CapsLock & s::
Send {Ctrl Down}-{Ctrl Up}
return

CapsLock & f::
Send {Ctrl Down}{Shift Down}-{Ctrl Up}{Shift Up}
return

; D/Y => CtrlZ CtrlY
CapsLock & d::
Send {Ctrl Down}z{Ctrl Up}
return

CapsLock & y::
Send {Ctrl Down}d{Ctrl Up}
return

; A => CtrlA (for tmux)
CapsLock & a::
Send {Ctrl Down}a{Ctrl Up}
return

; Arrow Keys
CapsLock & Left::
Send {Ctrl Down}{Left}{Ctrl Up}
return

CapsLock & Right::
Send {Ctrl Down}{Right}{Ctrl Up}
return

CapsLock & Up::
Send {Ctrl Down}{Up}{Ctrl Up}
return

CapsLock & Down::
Send {Ctrl Down}{Down}{Ctrl Up}
return


; https://github.com/madslundt/keybindings/blob/master/windows/autohotkey/simple-capslock-wasd-ijkl.ahk
; WASD
/*
CapsLock & w::
Send {Up}
return

CapsLock & s::
Send {Down}
return

CapsLock & a::
Send {Left}
return

CapsLock & d::
Send {Right}
return
*/
