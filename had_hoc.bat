REM how to create a had_hoc wifi on your computer

@echo off
CLS

:MENU
echo color 0
ECHO.
ECHO ----------------------------------------------------------
ECHO --- Press 1, 2, or 3 to select your task, or 4 to Exit ---
ECHO ----------------------------------------------------------
ECHO.
ECHO 1 - Set Wifi Sharing Attributes
ECHO 2 - Start WiFi Sharing
ECHO 3 - Stop WiFi Sharing
ECHO 4 - Details
ECHO 5 - Exit
ECHO 6 - delete Wifi Sharing
ECHO.

SET /P M=Type 1, 2, 3, 4, or 5, then press ENTER: 
IF %M%==1 GOTO SET
IF %M%==2 GOTO START
IF %M%==3 GOTO STOP
IF %M%==4 GOTO DETAILS
IF %M%==5 GOTO EOF
IF %M%==6 GOTO DELETE

:SET
netsh wlan set hostednetwork mode=allow ssid=MyNetwork key=Kensou12 keyusage=persistent
CLS
color 5
ECHO wifi MyPrivateNetwork set 
GOTO MENU

:START
netsh wlan start hostednetwork
CLS
color 3
ECHO wifi MyPrivateNetwork started 
GOTO MENU

