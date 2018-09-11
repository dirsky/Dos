@echo off
::I am Need Call

echo --------Start Call--------

echo %0
if "%1"=="c" echo %1
if not "%2"=="c" echo %2
if "%3"=="c" echo %3
::%4

echo -------- End Call--------