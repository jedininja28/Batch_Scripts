@ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION

SET ZC=0
SET OC=0
:Start
CLS
SET /A R0=%RANDOM%
SET /A ZO=%R0%/16385 
IF /I %ZO% EQU 1 (SET /A OC=%OC%+1) ELSE (SET /A ZC=%ZC%+1)
IF /I %ZO% EQU 1 (GOTO W) ELSE (GOTO Q)

:Q
ECHO ZeroCount:%ZC% OneCount:%OC%
ECHO 0
PAUSE 
GOTO start

:W
ECHO ZeroCount:%ZC% OneCount:%OC%
ECHO 1
PAUSE 
GOTO start
