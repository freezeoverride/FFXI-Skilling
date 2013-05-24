; Because Bard magic does not cost MP, there is no need to calculate MP usage or rest to recover MP,
; Bard magic does, however, have long recast timers, even on low level songs, so to maximize efficiency,
; we will cast 3 songs in sucession to give the first song adequate time to cool down.
; I normally set each macro to the lowest Paeon, Minne and Minuet for Simplicity (set each as CTRL+1 - 3)

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IfWinExist [window_name] ; replace "[window_name]" with the name of your character, leave no brackets
{
    WinActivate
}

Loop 5000 ; How many times to iterate through the 3 song loop. At 5000, this script will run for a total of 2000 days or almost 5.5 years. :D
{
	Loop 10000 ; Bard song casting - Nested. At 10,000 loops, this will run for about 100 hours (just over 4 days)
	{
		Send ^1
		Sleep 12000
		Send ^2
		Sleep 12000
		Send ^3
		Sleep 12000
		
	}
}