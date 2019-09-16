@echo off
title New标题
::设置bat的前、后颜色
::color 74
::清理屏幕
cls

echo
echo ----------------------------------------------
echo Author:徐国忠
echo Ver:1.0
echo Desc:
echo   1、双英文冒号是注释，必须单独一行 
echo   2、设置bat的标题，该设置必须在第一行，且为英文
echo   3、在cmd中输入例如：help copy来查看命令用法
echo ----------------------------------------------

if exist File goto next
::创建文件夹
md File
::下面是一个跳转标识符最多8位
:next
::进入文件夹
cd File
::生成日期字符串并写入txt文件，一个>是覆盖
date /t > date.txt
::返回上一级目录
::cd ..
::生成时间字符串并写入txt文件，两个>>是追加
time /t >> time.txt
path >> path.txt
HELP > HELP.txt

IF EXIST cdir.txt (ECHO cdir.txt exist) ELSE echo not exist cdir.txt & dir c:\*.* > cdir.txt

copy time.txt time_copy.txt
::删除文件用erase也行，同时执行用一个&符号
copy path.txt path2.txt /y & del path.txt
::复制文件，注意反斜杠\
copy HELP.txt ..\io\HELP.txt

if exist date.txt del /q date.txt

if exist time3.txt goto gg
::重新命名
::显示文件内容
ren time.txt time3.txt
type time3.txt | find "15" && echo 15点多啦

:gg
ERASE time3.txt

cd ..
::强制删除目录及其子文件
if "%1"=="d" rd /s /q File
