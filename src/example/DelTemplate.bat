@echo off
title 删除文件
color 74
echo ----------------------------------------------
echo Author:徐国忠
echo Ver:1.0
echo Desc:
echo      删除目录下的bmp文件
echo      可选择传入参数用法：DelTemplate.bat bmpFile2 bmp
echo      默认目录参数（可设置）：bmpFile
echo      默认扩展名参数（可设置）：bmp
echo ----------------------------------------------

::设置
set DefaultPWD=bmpFile
::文件类型
set DefaultFileType=bmp
::删除标识
set LogFile=BmpDelFlage


::传参
set FileType="%2"
set pwd="%1"
if %FileType%=="" set FileType=%DefaultFileType%
if %pwd%=="" set pwd=%DefaultPWD%

if exist %pwd%\%LogFile% goto haveDel

if not exist %pwd% goto end
echo 存在图片目录,已经开始处理...

cd /d %pwd%
set /a num=0
for %%c in (*.%FileType%) do set /a num=sum+1
for %%c in (*.%FileType%) do del /q "%%c"

date /t >> %LogFile%
echo 删除目录%pwd% >> %LogFile%
echo 已经删除bmp文件%num%个 >> %LogFile%

cd ..
:end
echo 已经删除bmp文件%num%个

:haveDel

 
