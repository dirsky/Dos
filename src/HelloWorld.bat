@echo off
title New����
::����bat��ǰ������ɫ
::color 74
::������Ļ
cls

echo
echo ----------------------------------------------
echo Author:�����
echo Ver:1.0
echo Desc:
echo   1��˫Ӣ��ð����ע�ͣ����뵥��һ�� 
echo   2������bat�ı��⣬�����ñ����ڵ�һ�У���ΪӢ��
echo   3����cmd���������磺help copy���鿴�����÷�
echo ----------------------------------------------

if exist File goto next
::�����ļ���
md File
::������һ����ת��ʶ�����8λ
:next
::�����ļ���
cd File
::���������ַ�����д��txt�ļ���һ��>�Ǹ���
date /t > date.txt
::������һ��Ŀ¼
::cd ..
::����ʱ���ַ�����д��txt�ļ�������>>��׷��
time /t >> time.txt
path >> path.txt
HELP > HELP.txt

IF EXIST cdir.txt (ECHO cdir.txt exist) ELSE echo not exist cdir.txt & dir c:\*.* > cdir.txt

copy time.txt time_copy.txt
::ɾ���ļ���eraseҲ�У�ͬʱִ����һ��&����
copy path.txt path2.txt /y & del path.txt
::�����ļ���ע�ⷴб��\
copy HELP.txt ..\io\HELP.txt

if exist date.txt del /q date.txt

if exist time3.txt goto gg
::��������
::��ʾ�ļ�����
ren time.txt time3.txt
type time3.txt | find "15" && echo 15�����

:gg
ERASE time3.txt

cd ..
::ǿ��ɾ��Ŀ¼�������ļ�
if "%1"=="d" rd /s /q File
