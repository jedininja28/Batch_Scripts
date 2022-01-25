@ECHO OFF
::SETLOCAL ENABLEEXTENSIONS
::SETLOCAL ENABLEDELAYEDEXPANSION
::SETLOCAL DISABLEEXTENSIONS
::SETLOCAL DISABLEDELAYEDEXPANSION
TITLE STRING TESTER2

Pause
:Start
CLS
echo ==================Start==================
ECHO.
SET D=100
SET RH=163
SET R=%Random% 

SET D2=100
SET RH2=163
SET R2=%Random% 

set armor=1
set weapon=1
set marmor=1
set mweapon=1

::TURN 1 PLAYER
SET /A H=%R%/2
SET /A RH=%R%/%D%

SET /A dam=1 + (%R% / 100) + ( %weapon% - %marmor% )

ECHO %H% : %R%/%D% : %dam% - %weapon% - %armor%

::TURN 2 MONSTER
SET /A H2=%R2%/2
SET /A RH2=%R2%/%D2%

SET /A dam2=1 + (%R2% / 100) + ( %mweapon% - %armor% )



ECHO %H2% : %R2%/%D2% : %dam2% - %mweapon% - %marmor%
::BATTLECALCULATOR

ECHO.
echo ===================End===================
PAUSE 
GOTO start

:Q
ECHO hey
PAUSE 
GOTO start

:W
ECHO hi
PAUSE 
GOTO start

:E
ECHO hello
PAUSE 
GOTO start