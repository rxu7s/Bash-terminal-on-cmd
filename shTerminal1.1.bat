@echo off
color 7
title %userprofile%: ~
:bash
set /p bash=%userprofile%:~$ %cmd%


::if commands
If %bash%==df goto df
If %bash%==help goto help
If %bash%==cd goto cd
If %bash%==cd_Desktop goto cd_Desktop
If %bash%==mkdir goto mkdir
If %bash%==whoami goto whoami
If %bash%==sudo_su goto sudo_su
If %bash%==clear goto clear
If %bash%==mousepad goto mousepad
If %bash%==dir goto dir
If %bash%==useradd goto useradd  
If %bash%==ssh goto ssh
If %bash%==apt-get_install_discord goto apt-get_install_discord
If %bash%==echo goto echo
If %bash%==nano goto nano
If %bash%==neofetch goto neofetch

::commands
:df
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

:cd_Desktop
cd %userprofile%\Desktop
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

:nano
cls
set /p 1=
set /p 2=
set /p 3=
(
	%1%
	%2%
	%3%
)>file.txt
goto bash

:apt-get_install_discord
curl "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -O -L
start DiscordSetup.exe
goto bash

:neofetch
ver
goto bash

timeout -1 >nul
pause