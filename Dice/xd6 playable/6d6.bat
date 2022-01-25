@ECHO OFF
Pause>nul
:Start
TITLE Dice
CLS
echo  Roll!
SET /A R0=%Random%/5461+1
SET /A R1=%Random%/5461+1
SET /A R2=%Random%/5461+1
SET /A R3=%Random%/5461+1
SET /A R4=%Random%/5461+1
SET /A R5=%Random%/5461+1
ECHO  %R0% %R1% %R2% %R3% %R4% %R5%
PAUSE>nul
GOTO start