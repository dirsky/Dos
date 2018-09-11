@echo off
title New标题
::设置bat的前、后颜色
color 74
::清理屏幕
cls

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
::生成日期字符串并写入txt文件
date /t > date.txt
::返回上一级目录
cd ..
::生成时间字符串并写入txt文件
time /t >> time.txt
path >> path.txt

IF NOT EXIST cdir.txt ECHO cdir.txt does not exist 1
dir c:\*.* > cdir.txt
IF EXIST cdir.txt ECHO cdir.txt exist 2

HELP > HELP.txt
copy path.txt path2.txt /y & del path.txt
::复制文件，注意反斜杠\
copy time.txt File\time2.txt
copy time.txt time5.txt
::删除文件用erase也行

if exist time5.txt del /q time5.txt
if exist time3.txt goto gg
::重新命名
ren time.txt time3.txt

:gg
::删除非空目录
::rd File
ERASE time.txt
::显示文件内容
type time3.txt
type time3.txt | find "10" && echo 10点多啦

pause