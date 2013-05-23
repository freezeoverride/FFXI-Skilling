Generic Skilling Script

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IfWinExist [WindowName] ; When you launch windower, your character name will be the window name (e.g. Hobo) put this name where it says [WindowName] and delete the brackets []
{
    WinActivate
}

Loop 100 ; This is the outer loop, meaning how many times you want to run through the entire casting and resting MP cycle. If you don't know how many you want to run, just set it at a high number like 500 and you can stop it anytime you want from the autohotkey icon in the system tray

{
	Loop 95 ; Casting/Healing Loop - Nested - This is the loop that 'pushes' your CTRL+1 macro, then waits 7 seconds and pushes it again. You divide the total character MP by the MP cost per spell and put that as the number of loops to run.
	{
		Send ^1
		Sleep 7000
	}
	Send {Esc} ; the next few Escapes and pauses are to deselect the character target and allow you to rest mp.
	Sleep 500 
	Send {Esc}
	Sleep 500
	Send h ; This sends the command to rest mp
	Sleep 180000 ; This is how long it takes your char to rest to full MP from 0 in milliseconds (e.g. if it takes 3 minutes, which is 180 seconds, the number is 180000 milliseconds).
	Send h ; This command makes your char stop resting and stand up
	Sleep 2000 ; This is a buffer to let the menus reset and prepare to start casting loop again
}

; Enjoy! If you have any questions or comments, you can reach me at freezeoverride [at] gmail [dot] com. You can also submit pull requests for this script in github.