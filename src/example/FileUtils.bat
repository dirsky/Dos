@echo off
if "%1"=="get" goto get
if "%1"=="g" goto get
if "%1"=="set" goto set
if "%1"=="s" goto set
goto get

:get
::��Ҫͨ��������ļ������ֽ��й���
dir /b *. > fn.txt
goto end

:set
::����txt�����ļ���
for /f "delims=" %%a in (fn.txt) do (
  mkdir "%%a"
)
goto end

:end
echo Complete !
