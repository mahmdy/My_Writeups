
cls
@echo off

set appname=WiFi Passview
set appvers=v2.5.5
set appstat=Karin
set dev=Waren Gonzaga
set desc=An open source batch script based program that can recover your WiFi Password easily in seconds.
set uicolor=a
set infouicolor=b
set erruicolor=c
set cliN=$%appname%
set divider======================================
set tempdivider=================================================


del null
cls

rem netsh wlan show profiles | findstr "All"

netsh wlan show profiles | findstr "All" > temp.txt




echo @echo off >> helper.bat
echo setlocal enabledelayedexpansion >> helper.bat
echo for /f "tokens=5*" %%%%i in (temp.txt) do ( set val=%%%%i %%%%j >> helper.bat
echo if "!val:~-1!" == " " set val=!val:~0,-1! >> helper.bat
echo echo !val! ^>^> final.txt) >> helper.bat
echo for /f "tokens=*" %%%%i in (final.txt) do @echo SSID: %%%%i ^>^> creds.txt ^& echo # %tempdivider% ^>^> creds.txt ^& netsh wlan show profiles name=%%%%i key=clear ^| findstr /c:"Key Content" ^>^> creds.txt ^& echo # %tempdivider% ^>^> creds.txt ^& echo # Key content is the password of your target SSID. ^>^> creds.txt ^& echo # %tempdivider% ^>^> creds.txt >> helper.bat
echo del /q temp.txt final.txt >> helper.bat
echo exit >> helper.bat
start helper.bat
