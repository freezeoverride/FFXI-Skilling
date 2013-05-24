#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IfWinExist [window_name] ; replace "[window_name]" with the name of your character, leave no brackets
{
    WinActivate
}

Loop 500 ; run through entire script 500 times.
{
	Loop 100 ; Casting/Healing Loop - Nested. Alternate between avatar spells with cooldowns included, then rest MP.
	{
		Send ^1
		Sleep 10000
		Send ^2
		Sleep 10000
	}
	Send {Esc}
	Sleep 500
	Send {Esc}
	Sleep 500
	Send h
	Sleep 192000
	Send h
	Sleep 2000
}