:Enviroment Variables
========================================================================
                        Enviroment Variables
========================================================================
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
SETLOCAL DISABLEEXTENSIONS
SETLOCAL DISABLEDELAYEDEXPANSION

TITLE 
TITLE %var%

::output errorcode
%ERRORLEVEL%
::output root system drive
%SystemDrive%
::output systemdrive/windows
%WinDir%
::output root drive of current script
%SystemRoot%
::output computername	
%ComputerName%
::output username
%UserName%
::output date
%date%
::output time
%time%
 
========================================================================
                              CODE BITS
========================================================================
:CODEBITS
::Cancle negitive numbers and zero by adding 1
( IF /I %var% LEQ 0 ( SET /a var=1 ) )

::output 1 or 0 and echo
(IF %random% GEQ 16383 (SET /A B=1) ELSE (SET /A B=0)) & ECHO %B%

:: Use ping to wait 2 seconds
ping localhost -n 2 >nul

::Adjust CMD Windows Size
mode con: cols=50 lines=25

::VERIFY Administrator Privladges
VERIFY >NUL & net session >NUL 2>NUL & IF ERRORLEVEL 1 (SET EP=F) ELSE (SET EP=T)

%date:~-4,4%%date:~-7,2%%date:~0,2%
========================================================================
:ECHO
   @ECHO OFF
	ECHO OFF
	ECHO >NUL 2>NUL
	ECHO Message
   >ECHO
    ECHO >%systemdrive%\file.txt
 	ECHO %var%
	ECHO Hello > %WinDir%/hello.123
   (ECHO & PAUSE & GOTO X)
	ECHO & command > File.txt
	
========================================================================
:%RANDOM%
			%RANDOM% : 0-32767.0 
	Half of %RANDOM% :   16383.5
	
	SET /A var=%random%	
	SET /A var=%random%/2500
	
	SET /A Divisor=2500
	SET /A var=%random%/"%Divisor%"

	::Divisons and Ranges of %Random% -- Utility.RandomMinMax

	::ZeroOne output strings
    (zeroone=%R%/12000)
	
	(SET /A zeroone=%Random%/16384) & ECHO %zeroone%

	(SET /A zeroone=%Random%/16384)
	(if /I %zeroone% lss 2 echo %zeroone%)
	(if /I %zeroone% equ 1 echo %zeroone%)
	(if /I %zeroone% equ 0 echo %zeroone%)	

	::ECHO is OFF ERROR
	((SET /A zeroone=%Random%/16384) & (ECHO %zeroone%))
	(IF %random% GEQ 16383 (SET /A B=1) ELSE (SET /A B=0)) & ECHO %B%

	  ::Random Ranges and Divisors
	 (X=%random%/"%Divisor%") = 1-9
			  Divisor	 Range    Half
				   20	 1-1638	  818.5
				  100	 1-327    163.5
				  150 	 1-218    109
				  600    1-54      27
				  650    1-50      25 
				  700    1-46	   23
			 	 1000 	 1-32      16
				 1500    1-21	   10.5
				 2000	 1-16	    8
				 2500	 1-13	    6.5
				 3000	 1-10	    5
				 3500	 1-9	    4.5
				 4000	 1-8	    4
				 4500	 1-7	    3.5	
				 5000	 1-6	    3
				 5500	 1-5	    2.5
				 6000	 1-5	    2.5
				 8000	 1-4	    2
				10000    1-3        1.5 
				12000    1-2        1

		%Random% Divided
				1 - 32767.0
				2 - 16383.5
				3 - 10922.33333333333
				4 - 8191.75
				5 - 6553.4
				6 - 5461.166666666667
				7 - 4681
				8 - 4095.875
				9 - 3640.777777777778
			   10 - 3276.7

	::Random 1 of 4
	SET /A R0=%RANDOM%
	SET /A ZO=%R0%/8191
	IF /I %ZO% EQU 0 (ECHO 0) else IF /I %ZO% EQU 1 (ECHO 1) else IF  /I %ZO% EQU 2 (ECHO 2) else IF  /I %ZO% EQU 3 (ECHO 3)
	
	::1/16 % chance of "Welcome"
	set r=%random% & If /I 1800 gtr %r% Echo Welcome... %r%
========================================================================
:SET

	SET X=X
	SET X=Y
	SET /A X=%X%+1
	SET /A X=%Y%+%X%-1
	
	::For Total Annihilation End Game Score Board
	Special Score Board Equasion: ((((energy produced-excess enegery)+(metal produced-excess metal)+(Kills/losses%))*(difficulty+players))/1000)
	SSB: ((((-)+(-))+(/))*(+))/1000)
	SET /A Score=((((6753356-3599893)+(219486-65922)+(306/36))*(3+3))/1000) & ECHO %Score%
	
	>" "
	>" "^	

	::Operators
	()                  - grouping
	! ~ -               - unary operators
	* / %               - arithmetic operators
	+ -                 - arithmetic operators
	<< >>               - logical shift
	&                   - bitwise and
	^                   - bitwise exclusive or
	|                   - bitwise or
	= *= /= %= += -=    - assignment
	&= ^= |= <<= >>=
	,                   - expression separator
    (A)||(B)			- If (A) Fails DO (B)	
	(A)^|(B)			- If (A) Finishes DO (B)

***	0=0
***	1=1
***	1=0
***	0=1
***	1=0+1
***	0=1+0
***	1=%1%-1
***	%1%==%1%+%1%

========================================================================
:IF
	IF
	IF NOT
	IF NOT EXIST
	IF EXIST
	IF EXIST (%systemdrive%/x) (SET X=1 & pause & goto ) else (SET X=2 & pause & goto)

	IF %var%==0 GOTO
	IF %var%==0 ECHO
	IF %var%==0 SET

	IF /I %var% GTR 100 ( )
	IF /I %var% GTR 100 command
	IF /I %var% GTR 100 SET
	IF /I %var% GTR 100 ECHO	
	IF /I %var% GTR 100 GOTO

	::Compairitve Operations
	IF /I %var% GTR %var2% 
				EQU - equal
				NEQ - not equal
				LSS - less than
				LEQ - less than or equal
				GTR - greater than  
				GEQ - greater than or equal

	::Tricks
    ( ) & ( )
    ( ) & ECHO
    ( ) & GOTO
    | & 	 
	( X ) Y > Y.txt & Z
	
	SET Y=2
	SET X=1
	(IF /I "%X%"=="1" (IF /I "%Y%"=="2" (ECHO Y2) ELSE ECHO Y0) ELSE ECHO X0)
	
	::If X set Y Else set Z x3 (if mob , if mana, if X)
***	IF /I var GEQ %var1% ( IF /I var LEQ %var2% ( IF /I var LEQ %var3% ( SET /A x=%x%+1 ) ELSE ( SET /A x=%x%+2 ) ( SET /A y=%y%-1 ) ELSE ( SET /A y=%y%+-1 ) ( SET /A z=%z%+1 ) ELSE ( z=%z%-1 ) ) ) 

	IF /I "%var%"=="%var2%" (GOTO X ) ELSE GOTO Y

	IF /I %MonsterHitPoints% LEQ 0 (SET /A Kill=%Kill%+1) else IF %PlayerHitPoints% LEQ 0 (SET /A Death=%Death%+1)

	IF /I %mHitPoints% LEQ 0 GOTO Win & IF /I %HitPoints% LEQ 0 GOTO Lose
	
	::ELSES
	ELSE command
	ELSE GOTO
	ELSE ECHO
	ELSE CLS
	ELSE SET
	ELSE IF
    IF ( ) ELSE ( )
    IF ( ) ELSE IF
    IF ( ) ELSE SET	
	IF ( ) ELSE ECHO & PAUSE & GOTO	
========================================================================
:FOR
FOR /F "delims=:" %%i in (%systemdrive%\File1.txt) do if /i File2.txt equ %%i echo %%i
:: If file2 is in file1.txt display file2 name
:: "delims=:" skipS :Headers in file1.txt

(FOR /F "delims=;" %%I In (%Systemdrive%\file1.Txt) DO FOR /F "delims=;" %%V IN ('dir %systemdrive%\Folder /A:-d /b /n') DO IF /I %%V Equ %%I Echo %%V )> %Systemdrive%\file2.txt
:: If contents of file1 is listed in dir command, output like files to file2.txt
:: -	dir %systemdrive%\Folder /A:-d /b /n -- do not output folders or headers
:: -	"delims=;" stop at semi-colon not space or tab

FOR /F "usebackq delims==" %%c IN (`chdir`) DO SET cdir=%%c
:: Set Current Diiectory to a variable
========================================================================
:%input%
::Prevent menu input dilimiter crash when space is entered! 
set input= & set /p input= & if /I "%input%"==" " goto :menu

========================================================================
:ERRORLEVEL
	::ErrorLevel should always be zero!

	ECHO %ERRORLEVEL% 
		::For Example "0"

***	FOR %%B IN (%ERROELEVEL%) DO %ERROELEVEL%>D:/ERL.TXT	
***	|| IF %ERRORLEVEL% = 1 %ERRORLEVEL% > %RootDrive%/Errorlog.txt  
	|| IF ERRORLEVEL = 1 
	
	IF ERRORLEVEL 1 ECHO %ERRORLEVEL%
	IF ERRORLEVEL 1 GOTO ERRORHANDEL1 || GOTO ERRORHANDEL2 
	IF ERRORLEVEL 1 START || EXIT
	
	IF /I %errorlevel% gtr 0 echo %errorlevel% > %systemdrive%\temp\errorlog.txt
	
========================================================================
:ERRORLEVELCODES

	::Loading Varible without no deffinition -> set /a x=0
	errorlevel = 1073750989 = Missing operand. 

	::Missing Math Symbol = + - / * ()
	errorlevel = 1073750990 = Missing operator

	errorlevel = 9009 = 'XYZ' is not recognized as an internal or external command, operable program or batch file.

	Invalid number.  Numeric constants are either decimal (17),
	hexadecimal (0x11), or octal (021).
	-14594
	
	
	
	 
	
	
	
	
	
	


