@ECHO OFF
Pause>nul
:Start
TITLE Dice
CLS
echo  Roll!
SET /A R0=%Random%/5461+1
SET /A R1=%Random%/5461+1
ECHO  %R0% %R1%
PAUSE>nul
GOTO start