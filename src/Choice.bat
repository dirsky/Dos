CHOICE /C YNC /M "ȷ���밴 Y�����밴 N������ȡ���밴 C��"
if errorlevel 3 goto c
if errorlevel 2 goto n 
if errorlevel 1 goto y
echo ----------------Calling NeedCall----------------
call NeedCall.bat c d e f
::���·�������·��
echo ---------------- BackHome ----------------

:n
for %%c in (*.bat *.txt) do type %%c
goto c

:y
IF EXIST cdir.txt TYPE cdir.txt 
::IF ERRORLEVEL 1 ECHO ʧ�ܴӴ�С��
::IF ERRORLEVEL 0 ECHO �ɹ�

:c
echo c

pause