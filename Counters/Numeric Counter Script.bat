@ECHO OFF
TITLE Counter
Echo Numeric Counter Script
Pause

:Start
if not exist c:\temp md c:\temp
set /a i=%i%+1
echo %i% >> c:\temp\ports.txt
if /i %i%==65535 exit
GOTO :Start

