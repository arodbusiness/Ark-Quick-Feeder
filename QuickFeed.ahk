#SingleInstance, Force
#Persistent


SearchString := "raw"


return

~G::
	if (WinActive("ahk_class UnrealWindow"))
	{
		Send {f}
		Sleep 250
		MouseClick, , 0.111*A_ScreenWidth, 0.173*A_ScreenHeight
		Sleep 50
		Send %SearchString%
		Sleep 50
		MouseClick, , 0.185*A_ScreenWidth, 0.173*A_ScreenHeight
		Sleep 50
		Send {f}
	}
return