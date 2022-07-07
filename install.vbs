Dim FSO, localfile, WshShell, BtnCode

Set WshShell = WScript.CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject( "WScript.Shell" )

localfile = objShell.ExpandEnvironmentStrings("%APPDATA%")+"\Microsoft\Windows\Start Menu\Programs\Startup\autologin.vbs"

If FSO.FileExists(localfile) Then
Select Case WshShell.Popup("Autologin detected as installed. Do you wish to uninstall?", -1, "Autologin-BayernWLAN Install Script", 33)
	case 1
		FSO.DeleteFile localfile
		BtnCode = WshShell.Popup("Uninstall canceled", 1, "Autologin-BayernWLAN Install Script")
	case 2
		BtnCode = WshShell.Popup("Uninstall canceled", 1, "Autologin-BayernWLAN Install Script")
End Select
Else
Select Case WshShell.Popup("This script will install Autologin-BayernWLAN to your autostart folder. Do you want to proceed?", -1, "Autologin-BayernWLAN Install Script", 33)
	case 1
		FSO.CopyFile "autologin.vbs", localfile
		BtnCode = WshShell.Popup("Install successfull", 1, "Autologin-BayernWLAN Install Script")
	case 2
		BtnCode = WshShell.Popup("Install canceled", 1, "Autologin-BayernWLAN Install Script")
End Select
End If