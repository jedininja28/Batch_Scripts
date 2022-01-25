@ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION
Pause
set hr=0
:Start
TITLE Dice
CLS
SET /A R0=%Random%/5461+1
SET /A R1=%Random%/5461+1
SET /A R2=%Random%/5461+1
SET /A R3=%Random%/5461+1
SET /A R4=%Random%/5461+1
SET /A R5=%Random%/5461+1

:Rolltop
ECHO=============
ECHO     ROLL
ECHO=============
ECHO   Dice1: %R0%
ECHO   Dice2: %R1%
ECHO   Dice3: %R2%
ECHO   Dice4: %R3%
ECHO   Dice5: %R4%
ECHO   Dice6: %R5%
SET /A TOTAL=%R0%+%R1%+%R2%+%R3%+%R4%+%R5%

IF /I %TOTAL% gtr %HR% Set /a hr=%total%
ECHO=============
ECHO     TOTAL: %TOTAL%
ECHO HIGH ROLL: %HR%
ECHO=============
PAUSE 
GOTO start

score:

high
1 pair
2 pair
3 pair
3 of a kind
2 3 of a kind
4 of a kind
5 of a kind
6 of a kind
6 in a row

If /i %totalface%==(
::Singles
1
2
3
4
5
6
::Pairs
1 1
2 2
3 3
4 4
5 5
6 6
::Tripples
1 1 1
2 2 2
3 3 3
4 4 4
5 5 5
6 6 6
::Quads
1 1 1 1
2 2 2 2 
3 3 3 3
4 4 4 4
5 5 5 5
6 6 6 6
::Octals
1 1 1 1 1
2 2 2 2 2
3 3 3 3 3
4 4 4 4 4
5 5 5 5 5
6 6 6 6 6
)

::sixes
1 1 1 1 1 1
2 2 2 2 2 2
3 3 3 3 3 3
4 4 4 4 4 4
5 5 5 5 5 5
6 6 6 6 6 6

