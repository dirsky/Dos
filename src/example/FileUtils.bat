@echo off
if "%1"=="get" goto get
if "%1"=="g" goto get
if "%1"=="set" goto set
if "%1"=="s" goto set
goto get

:get
::主要通过下面的文件夹名字进行过滤
dir /b *. > fn.txt
goto end

:set
::根据txt创建文件夹
for /f "delims=" %%a in (fn.txt) do (
  mkdir "%%a"
)
goto end

:end
echo Complete !
