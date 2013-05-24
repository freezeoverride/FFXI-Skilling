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
	Loop 151 ; Casting/Healing Loop - Nested. Cast one spell, 7 sec recast timer, then repeat.
	{
		Send ^1
		Sleep 7000
		
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