@ECHO OFF
:p
SET /A R0=%Random%/327+1
SET /A R1=%Random%/327+1
SET /A R2=%Random%/327+1
SET /A R3=%Random%/327+1
SET /A R4=%Random%/327+1
SET /A R5=%Random%/327+1
set /a t=%R0%+%R1%+%R2%+%R3%+%R4%+%R5%
ECHO %t%
pause
goto :p