@echo off
title New����
::����bat��ǰ������ɫ
color 74
::������Ļ
cls

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
::���������ַ�����д��txt�ļ�
date /t > date.txt
::������һ��Ŀ¼
cd ..
::����ʱ���ַ�����д��txt�ļ�
time /t >> time.txt
path >> path.txt

IF NOT EXIST cdir.txt ECHO cdir.txt does not exist 1
dir c:\*.* > cdir.txt
IF EXIST cdir.txt ECHO cdir.txt exist 2

HELP > HELP.txt
copy path.txt path2.txt /y & del path.txt
::�����ļ���ע�ⷴб��\
copy time.txt File\time2.txt
copy time.txt time5.txt
::ɾ���ļ���eraseҲ��

if exist time5.txt del /q time5.txt
if exist time3.txt goto gg
::��������
ren time.txt time3.txt

:gg
::ɾ���ǿ�Ŀ¼
::rd File
ERASE time.txt
::��ʾ�ļ�����
type time3.txt
type time3.txt | find "10" && echo 10�����

pause