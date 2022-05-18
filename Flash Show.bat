@ECHO OFF
:: Check Windows version and command line arguments (none required)
IF NOT "%OS%"=="Windows_NT" GOTO Syntax
IF NOT  "%~1"==""           GOTO Syntax

:: Remove drive letters no longer in use
MOUNTVOL /R

:: Read the list of physical drives from the registry, and show only the removable "Flash" drives
FOR /F "tokens=2 delims=\ " %%A IN ('REG Query "HKLM\SYSTEM\MountedDevices" /v "\DosDevices\*" ^| FINDSTR /R /E /C:" 5F[0-9A-F]*"') DO ECHO.%%A
GOTO:EOF

:Syntax
ECHO.
ECHO List of removable ("Flash") drives on PC
ECHO.
ECHO Usage:   GETFLASHDRIVES
ECHO.