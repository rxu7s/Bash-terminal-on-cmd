@echo off
color 7
title bash ~
::echo Please create a default UNIX user account.
::echo For more information visit: https://discord.gg/JxVT9zYWsJ
::set /p usr=Enter new UNIX username: 
cd /d %~dp0
:bash
title %username%@%computername%: ~%cd%
set /p bash=%username%@%computername%:~$ %cmd%


::if commands
If %bash%==df goto df
If %bash%==help goto help
If %bash%==cd goto cdd
If %bash%==cd_Desktop goto cd_Desktop
If %bash%==mkdir goto mkdir
If %bash%==whoami goto whoami
If %bash%==sudo_su goto sudo_su
If %bash%==clear goto clear
If %bash%==mousepad goto mousepad
If %bash%==leafpad goto mousepad
If %bash%==dir goto dir
If %bash%==useradd goto useradd  
If %bash%==ssh goto ssh
::If %bash%==apt-get_install_discord goto apt-get_install_discord
If %bash%==echo goto echo
If %bash%==nano goto nano
If %bash%==neofetch goto neofetch
If %bash%==ls goto dir
If %bash%==git_clone goto git_clone
If %bash%==./color.sh goto ./color.sh
If %bash%==./ddos.sh goto ./ddos.sh
If %bash%==./btc.sh goto ./btc.sh
If %bash%==./webhook-spammer.sh goto ./webhook-spammer.sh
::If %bash%==./calculator.sh goto ./calculator.sh
If %bash%==ifconfig goto ifconfig
If %bash%==./https-to-html goto ./https-to-html
If %bash%==cp goto cp

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

:cdd
set /p cdw=Location: 
cd %cdw%
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
set /p fnn=File name: 
(
	This file is created by nano.
)>%fnn%.txt
goto bash

:apt-get_install_discord
curl "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -O -L
start DiscordSetup.exe
goto bash

:neofetch
ver
goto bash

:git_clone
set /p gitcl=Link: 
git clone %gitcl%
goto bash

:./color.sh
set /p colorc=Color: 
color %colorc%
goto bash

:./ddos.sh
set /p ddip=IP: 
set /p pckt=Packet: 
ping %ddip%
if errorlevel 1 GOTO erstop
goto ddloop

:erstop 
goto bash

:ddloop
color 1
echo %pckt%m %date% %time% ^<--packet sent! hammering--^>
goto ddloop

:./btc.sh
set /p wlt=Wallet: 
echo Starting bitcoin miner
timeout 2 >nul
goto btccm

:btccm
echo %date% %time% mined 0.00%random% bitcoins
timeout 3 >nul
goto btccm

:./webhook-spammer.sh
set /p setwebh=Webhook: 
set /p mesw=Message: 
goto webhs

:webhs
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%mesw%\"}" %setwebh%
goto webhs

:./calculator.sh
set /p 1cal=First number: 
set /p 2cal=Second number: 
set /p calcm=Operation: 
echo %1cal% %calcm% %2cal%
goto bash

:ifconfig
ipconfig
goto bash

:./https-to-html
set /p addr=Addres: 
set /p fn=File name: 
curl https://%addr% > %fn%.txt
goto bash

:cp
set /p cpfi=File: 
set /p cpfw=Location: 
copy %cpfi% %cpfw%
goto bash


timeout -1 >nul
pause