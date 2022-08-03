set "IPADDRESS=8.8.8.8"

:NetworkConnection
ping -n 1 %IPADDRESS% | find "TTL=" >nul
if errorlevel 1 (
    goto Retry
) else (
    goto ExecTask
)

:Retry
ping 127.0.0.1 -n 6 >nul REM wait for 5 seconds (-n %SECONDS%+1)
goto :NetworkConnection

:ExecTask
echo "Connection to %IPADDRESS% is OK GeekIT!!."
pause