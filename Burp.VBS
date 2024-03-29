Set WshShell = CreateObject("WScript.Shell")
  WshShell.Run chr(34) & "C:\Users\Kaizen\Documents\Burp\burp.bat" & Chr(34), 0
  Set WshShell = Nothing
