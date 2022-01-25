@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
Pause
:Divisor
set d=0.00
:value of %random%
set r=32767.00
:Start
set /a x=%x%
if /i %d% equ %r% exit /b
set /a d=%d%+1.01
set /a x=%r%/%d%
echo %r% / %d% = %x% >> c:\temp\"random divided".txt
goto :start