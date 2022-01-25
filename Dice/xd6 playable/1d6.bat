@ECHO OFF
Pause>nul
:Start
TITLE Dice
CLS
echo  Roll!
SET /A R0=%Random%/5461+1
ECHO  %R0%
PAUSE>nul
GOTO start