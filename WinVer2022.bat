@ECHO OFF
:: By Bille

VER | FINDSTR /L "5.0." > NUL:
IF %ErrorLevel% EQU 0 ECHO Running 2000
 
VER | FINDSTR /L "5.1." > NUL:
IF %ErrorLevel% EQU 0 ECHO Running XP
 
VER | FINDSTR /L "5.2." > NUL:
IF %ErrorLevel% EQU 0 ECHO Running Win 2003
 
VER | FINDSTR /L "6.0." > NUL:
IF %ErrorLevel% EQU 0 (
	If EXIST %SystemRoot%\System32\ServerManagerLauncher.exe (
		ECHO Running Windows 2008R1
	) ELSE (
		ECHO Running Vista
	)
)
 
VER | FINDSTR /L "6.1." > NUL:
IF %ErrorLevel% EQU 0 (
	If EXIST %SystemRoot%\System32\ServerManagerLauncher.exe (
		ECHO Running Windows 2008R2
	) ELSE (
		ECHO Running Windows 7
	)
)