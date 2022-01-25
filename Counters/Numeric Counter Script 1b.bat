@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
TITLE Numaric Counter Script

:appstart
cls
Echo Numaric Counter Script
echo Large ranges may take sometime to complete.

:setmin
set /p min=Set Minimum Range: 
echo %min%|findstr /r /c:"^[0-9][0-9]*$" >nul & if errorlevel 1 (echo Invalid input... & cls & goto :setmin)

:setmax
set /p max=Set Maximum Range: 
echo %max%|findstr /r /c:"^[0-9][0-9]*$" >nul & if errorlevel 1 (echo Invalid input... & cls & goto :setmax)
if /i %max% lss %min% echo Invalid input... & cls & goto :setmax

:setmulti
set /p multi=Set Multiplyer: 
echo %multi%|findstr /r /c:"^[0-9][0-9]*$" >nul & if errorlevel 1 (echo Invalid input... & cls & goto :setmulti)
IF /i %multi% leq 0 echo Invalid input... & cls & goto :setmulti
IF /i %multi% geq %max% echo Invalid input... & cls & goto :setmulti

:setup
if not exist c:\temp md c:\temp
set filename=%min%to%max%by%multi%
echo %min% > c:\temp\%filename%.txt
echo Creating Numaric Range from %min% to %max% counting by %multi%'s in c:\temp\%filename%.txt

:Start
set /a min=%min%+%multi%
echo %min% >> c:\temp\%filename%.txt
if /i %min% geq %max% echo: & Echo Numaric Range Completed... & pause & goto :appstart
GOTO :Start

