‘ NewFolder.vbs
‘ Version 2022 – September 2022
‘ ————————————————‘
Option Explicit
Dim objFSO, objFolder, strDirectory
strDirectory = "c:\logs"
‘ Create FileSystemObject. So we can apply .createFolder method
Set objFSO = CreateObject("Scripting.FileSystemObject")

‘ Here is the key line Create a Folder, using strDirectory
Set objFolder = objFSO.CreateFolder(strDirectory)
WScript.Echo "Just Created!!!!!!! " & strDirectory
WScript.Quit
‘ End of VBScript to create a folder