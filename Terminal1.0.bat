@echo off
color 7
title %userprofile%: ~
:bash
set /p bash=%userprofile%:~$ %cmd%


::if commands
If %bash%==1 goto 1
If %bash%==help goto help
If %bash%==cd goto cd
If %bash%==mkdir goto mkdir
If %bash%==whoami goto whoami
if "%bash%"=="sudo\ su" goto :sudo_su
If %bash%==clear goto clear
If %bash%==mousepad goto mousepad
If %bash%==dir goto dir
If %bash%==useradd goto useradd  
If %bash%==ssh goto ssh
if %bash%=="apt-get install discord" goto apt-get_install_discord
If %bash%==echo goto echo

::commands

:1
echo %bash%: command not found
goto bash

:help
echo commands= mkdir/cd/whoami/sudo_su/clear/mousepad/dir/useradd/ssh

:echo
echo Hello World
goto bash

:mkdir
mkdir file
goto bash

:cd
cd
goto bash

:whoami
net user
goto bash

:sudo_su
runas /user:Administrator "cmd.exe /C %CD%\installer.cmd %CD%"
goto bash

:clear
cls
goto bash

:mousepad
start notepad
goto bash

:dir
dir
goto bash

:useradd
net user username password /ADD
goto bash

:ssh
mstsc
goto bash

:apt-get_install_discord
curl "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -O -L
start DiscordSetup.exe
goto bash

timeout -1 >nul
pause