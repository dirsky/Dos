@echo off
::I am Need Call
::调用方法：WithPara.bat c c c d

echo --------Start Call--------

echo 第0个参数：%0
if "%1"=="c" echo this is 第1个参数:%1
if not "%2"=="c" goto end
if "%3"=="c" echo this is 第3个参数:%3

:end
echo -------- End Call--------
