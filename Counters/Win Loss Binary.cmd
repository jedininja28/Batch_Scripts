@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
SET win=0
set loss=0
set runs=0
set binary=-
:Start
cls
ECHO =====================================
ECHO Win:%Win% Loss:%loss% Runs:%runs% Binary:%binary%
ECHO =====================================
PAUSE >NUL
SET /A var=%random% 
IF /I %var% GEQ 18383 (SET /A Win=%Win%+1 & SET /A binary=1) else (SET /A loss=%loss%+1 & SET /A binary=0)
SET /A runs=%Win%+%loss%
GOTO :Start
