@ECHO OFF
SET /A R0=%Random%/327+1
SET /A R1=%Random%/327+1
set /a t=%R0%+%R1%
ECHO %t%