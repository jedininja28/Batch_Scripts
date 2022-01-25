:Startup
@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

:load
::paths
set docs=%systemdrive%\docs
set apps=%systemdrive%\programs
::messages
set errr=Does not Exist...
:endload

:Menu
set h=:Menu
cls
title Fancey Batch Menu
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo -----------------Main Menu------------------
echo -  1. Documents                            -
echo -  2. Programs                             -
echo -  3. Menu3                                -
echo -  4. Menu4                                -
echo -  5. Menu5                                -
echo -  6. Menu6                                -
echo -  r. Restart                              -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Exit------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :docs
if /I "%i%"=="2" goto :Programs
if /I "%i%"=="3" goto :Menu3
if /I "%i%"=="4" goto :Menu4
if /I "%i%"=="5" goto :Menu5
if /I "%i%"=="6" goto :Menu6
if /I "%i%"=="r" start cmd %rootdir%\"Fancey Batch Menu.bat" /b /REALTIME
if /I "%i%"=="q" exit
goto %h%



:docs
set h=:docs
cls
title Documents
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo -----------------Documents------------------
echo -  1. file1                                -
echo -  2. file2                                -
echo -  3. file3                                -
echo -  4. file4                                -
echo -  5. file5                                -
echo -  6. file6                                -
echo -  7. file7                                -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Back------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" if exist %doc%\file1.pdf start %doc%\file1.pdf else goto :error
if /I "%i%"=="2" if exist %doc%\file2.txt call %doc%\file2.txt else goto :error
if /I "%i%"=="3" if exist %doc%\file3.txt call %doc%\file3.txt else goto :error
if /I "%i%"=="4" if exist %doc%\file4.txt call %doc%\file4.txt else goto :error
if /I "%i%"=="5" if exist %doc%\file5.txt call %doc%\file5.txt else goto :error
if /I "%i%"=="6" if exist %doc%\file6.txt call %doc%\file6.txt else goto :error
if /I "%i%"=="7" if exist %doc%\file7.txt call %doc%\file7.txt else goto :error
if /I "%i%"=="q" goto :Menu
goto %h%
:error
echo file not found...
pause
goto %h%



:Programs
cls
set h=:Programs
title Programs
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo ------------------Programs------------------
echo -  1. Program1                             -
echo -  2. Program2                             -
echo -  3. Program3                             -
echo -  4. Program4                             -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Back------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" if exist %apps%\app1.exe (start %apps%\app1.exe & goto %h%) else echo app1.exe %errr% & pause & goto %h%
if /I "%i%"=="2" if exist %apps%\app2.exe (start %apps%\app2.exe & goto %h%) else echo app2.exe %errr% & pause & goto %h%
if /I "%i%"=="3" if exist %apps%\"app 3.exe" (start %apps%\"app 3.exe" /REALTIME & goto %h%) else echo app 3.exe %errr% & pause & goto %h%
if /I "%i%"=="4" if exist %apps%\"app 4.exe" (start %apps%\"app 4.exe" /ABOVRNORMAL & goto %h%) else echo app 4.exe %errr% & pause & goto %h%
if /I "%i%"=="q" goto :Menu
goto %h%


:Menu3
cls
set h=:Menu3
title Option
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo ------------------Option--------------------
echo -  1. Option1                              -
echo -  2. Option2                              -
echo -  3. Option3                              -
echo -  4. Option4                              -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Back------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :Option1
if /I "%i%"=="2" goto :Option2
if /I "%i%"=="3" goto :Option3
if /I "%i%"=="4" goto :Option4
if /I "%i%"=="q" goto :Menu
goto %h%

:Option1
echo Option1
pause>nul
goto %h%
:Option2
echo Option2
pause>nul
goto %h%
:Option3
echo Option3
pause>nul
goto %h%
:Option4
echo Option4
pause>nul
goto %h%



:Menu4
cls
set h=:Menu4
title Selection
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo ----------------Selection-------------------
echo -  1. Selection1                           -
echo -  2. Selection2                           -
echo -  3. Selection3                           -
echo -  4. Selection4                           -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Back------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :Selection1
if /I "%i%"=="2" goto :Selection2
if /I "%i%"=="3" goto :Selection3
if /I "%i%"=="4" goto :Selection4
if /I "%i%"=="q" goto :Menu
goto %h%

:selection1
echo selection1
pause>nul
goto %h%
:selection2
echo selection2
pause>nul
goto %h%
:selection3
echo selection3
pause>nul
goto %h%
:selection4
echo selection4
pause>nul
goto %h%



:Menu5
cls
set h=:Menu5
title Array1
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo -------------------Array--------------------
echo -  1. Array1                               -
echo -  2. Array2                               -
echo -  3. Array3                               -
echo -  4. Array4                               -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Back------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :Array1
if /I "%i%"=="2" goto :Array2
if /I "%i%"=="3" goto :Array3
if /I "%i%"=="4" goto :Array4
if /I "%i%"=="q" goto :Menu
goto %h%

:Array1
echo Array1
pause>nul
goto %h%
:Array2
echo Array2
pause>nul
goto %h%
:Array3
echo Array3
pause>nul
goto %h%
:Array4
echo Array4
pause>nul
goto %h%



:Menu6
cls
set h=:Menu6
title List
echo --------------------------------------------
echo -            Fancey Batch Menu             -
echo --------------------List--------------------
echo -  1. List1                                -
echo -  2. List2                                -
echo -  3. List3                                -
echo -  4. List4                                -
echo --------------------------------------------
echo -  Date: %date%  Time:%time%  -
echo ------------Press "Q" to go Back------------
set i= & set /p i= & if /I "%i%"==" " goto %h%
if /I "%i%"=="1" goto :List1
if /I "%i%"=="2" goto :List2
if /I "%i%"=="3" goto :List3
if /I "%i%"=="4" goto :List4
if /I "%i%"=="q" goto :Menu
goto %h%

:List1
echo List1
pause>nul
goto %h%
:List2
echo List2
pause>nul
goto %h%
:List3
echo List3
pause>nul
goto %h%
:List4
echo List4
pause>nul
goto %h%

:: If the scrip ends up here
rem Restart Script.
goto :load

