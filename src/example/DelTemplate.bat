@echo off
title ɾ���ļ�
color 74
echo ----------------------------------------------
echo Author:�����
echo Ver:1.0
echo Desc:
echo      ɾ��Ŀ¼�µ�bmp�ļ�
echo      ��ѡ��������÷���DelTemplate.bat bmpFile2 bmp
echo      Ĭ��Ŀ¼�����������ã���bmpFile
echo      Ĭ����չ�������������ã���bmp
echo ----------------------------------------------

::����
set DefaultPWD=bmpFile
::�ļ�����
set DefaultFileType=bmp
::ɾ����ʶ
set LogFile=BmpDelFlage


::����
set FileType="%2"
set pwd="%1"
if %FileType%=="" set FileType=%DefaultFileType%
if %pwd%=="" set pwd=%DefaultPWD%

if exist %pwd%\%LogFile% goto haveDel

if not exist %pwd% goto end
echo ����ͼƬĿ¼,�Ѿ���ʼ����...

cd /d %pwd%
set /a num=0
for %%c in (*.%FileType%) do set /a num=sum+1
for %%c in (*.%FileType%) do del /q "%%c"

date /t >> %LogFile%
echo ɾ��Ŀ¼%pwd% >> %LogFile%
echo �Ѿ�ɾ��bmp�ļ�%num%�� >> %LogFile%

cd ..
:end
echo �Ѿ�ɾ��bmp�ļ�%num%��

:haveDel

 
