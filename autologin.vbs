On Error Resume Next

Dim o, session

Set o = CreateObject("MSXML2.XMLHTTP")

Do While True
o.open "GET", "https://hotspot.vodafone.de/api/v4/session", False
o.send
session = Mid(o.ResponseText, 19, 32)
o.open "GET", "https://hotspot.vodafone.de/api/v4/login?loginProfile=6&accessType=termsOnly&sessionID=" + session + "&action=redirect&portal=bayern"
o.send
wscript.sleep 10000
Loop