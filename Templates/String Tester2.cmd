@ECHO OFF
ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION
::SETLOCAL DISABLEEXTENSIONS
::SETLOCAL DISABLEDELAYEDEXPANSIO
:Start
TITLE STRING TESTER
Pause
CLS
echo ==================Start==================
ECHO.


ECHO.
echo ===================End===================

pause
goto :start
:Q
ECHO hey
PAUSE 
GOTO start

:W
ECHO hi
PAUSE 
GOTO start

:E
ECHO hello
PAUSE 
GOTO start