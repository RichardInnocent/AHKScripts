/*
Hotkeys:
Ctrl-Alt-I: Toggle active window always on top
Ctrl-Alt-O: Make active window opaque
Ctrl-Alt-P: Make active window transparent
*/

!^I::
WinGet, currentWindow, ID, A
WinGet, ExStyle, Exstyle, ahk_id %currentWindow%
if (ExStyle & 0x8)  ; 0x8 is WS_EX_TOPMOST.
{
	WinSet, AlwaysOnTop, off, ahk_id %currentWindow%
	SplashImage,, x0 y0 b fs12, OFF always on top.
	Sleep, 1500
	SplashImage, Off
}
else
{
	WinSet, AlwaysOnTop, on, ahk_id %currentWindow%
	SplashImage,, x0 y0 b fs12, ON always on top.
	Sleep, 1500
	SplashImage, Off
}
return

!^O::
	WinSet, Transparent, OFF, A
	Return

!^P::
	WinSet, Transparent, 150, A
	Return