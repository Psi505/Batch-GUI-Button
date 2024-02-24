@Echo off
@Mode 48,15
@Title %~n0

cd %~dp0 &:: Added line for program to work when run as admin
Batbox /h 0

:Loop
Call Button  10 4 "Open cmd" 24 4 "Close Cmd" 17 8 "  Exit  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (start "Cmd")
if %errorlevel%==2 (taskkill /f /fi "windowtitle eq Cmd" >nul 2>&1)
if %errorlevel%==3 (exit)
goto Loop