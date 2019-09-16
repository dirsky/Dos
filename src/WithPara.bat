@echo off
::I am Need Call
::调用方法：WithPara.bat c c1 c d

echo --------Start Call--------

echo %0
if "%1"=="c" echo this is 1:%1
if not "%2"=="c" goto end
if "%3"=="c" echo this is 3:%3
:end
echo this is end

echo -------- End Call--------