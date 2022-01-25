@ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION
Pause
:Start
TITLE Dice
CLS
SET Points=1
SET /A R0=%Random%/5461+1
SET /A R1=%Random%/5461+1
SET /A R2=%Random%/5461+1
SET /A R3=%Random%/5461+1
SET /A R4=%Random%/5461+1
SET /A R5=%Random%/5461+1
ECHO=============
ECHO     ROLL
ECHO=============
ECHO   Dice1: %R0%
ECHO   Dice2: %R1%
ECHO   Dice3: %R2%
ECHO   Dice4: %R3%
ECHO   Dice5: %R4%
ECHO   Dice6: %R5%
ECHO=============
PAUSE 
GOTO start

score:

high
pair
2 pair
3 pair
3 of a kind
2 3 of a kind
4 of a kind
5 of a kind
6 of a kind
6 in a row
