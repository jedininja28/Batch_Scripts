@ECHO OFF
SET /A R0=%Random%/3276+1
SET /A R1=%Random%/3276+1
SET /A R2=%Random%/3276+1
set /a t=%R0%+%R1%+%R2%
ECHO %t%