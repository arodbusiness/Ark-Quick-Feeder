#SingleInstance, Force
#Persistent


SearchString := "rr"


return

~XButton2::
	if (WinActive("ahk_class UnrealWindow"))
	{
		Send {f}
		Sleep 500
		if CheckInv()
			MouseClick, , 0.111*A_ScreenWidth, 0.173*A_ScreenHeight
		Sleep 50
		if CheckInv()
			Send %SearchString%
		Sleep 50
		if CheckInv()
			MouseClick, , 0.185*A_ScreenWidth, 0.173*A_ScreenHeight
		Sleep 50
		if CheckInv()
			Send {f}
	}
return

CheckInv(){
	if (A_ScreenWidth>=1920){
		;;;;;;1920x1080
		X := 0.438*A_ScreenWidth
		Y := 0.026*A_ScreenHeight
	}
	else
	{
		;;;;;;1680x1050
		X := 0.440*A_ScreenWidth
		Y := 0.08*A_ScreenHeight
	}
	
	PixelGetColor, Color, %X%, %Y%
	B := Color >> 16 & 0xFF, G := Color >> 8 & 0xFF, R := Color & 0xFF

	if (R<165 && G>220 && B>240 && WinActive("ahk_class UnrealWindow"))
		RetVal := true
	else
		RetVal := false
		
	return RetVal
}