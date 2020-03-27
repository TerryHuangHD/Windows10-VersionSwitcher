@echo off 

:start
cls
ECHO *******************************
ECHO * Windows 10 Version Switcher *
ECHO *******************************
ECHO 1. Windows 10 Pro
ECHO 2. Windows 10 Pro VL
ECHO 3. Windows 10 Education VL
ECHO 4. Windows 10 Enterprise VL
ECHO 5. Exit
ECHO.

set choice=
set /p choice=Select Version: 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto to_pro
if '%choice%'=='2' goto to_pro_vl
if '%choice%'=='3' goto to_edu_vl
if '%choice%'=='4' goto to_ent_vl
if '%choice%'=='5' goto end
goto start

:to_pro
changepk /ProductKey VK7JG-NPHTM-C97JM-9MPGT-3V66T
goto finish

:to_pro_vl
changepk /ProductKey W269N-WFGWX-YVC9B-4J6C9-T83GX
goto finish

:to_edu_vl
changepk /ProductKey NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto finish

:to_ent_vl
changepk /ProductKey NPPR9-FWDCX-D2C8J-H872K-2YT43
goto finish

:finish
ECHO.
ECHO Switched Successfully

:end
ECHO.
pause
