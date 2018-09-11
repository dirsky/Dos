CHOICE /C YNC /M "确认请按 Y，否请按 N，或者取消请按 C。"
if errorlevel 3 goto c
if errorlevel 2 goto n 
if errorlevel 1 goto y
echo ----------------Calling NeedCall----------------
call NeedCall.bat c d e f
::相对路径或绝对路径
echo ---------------- BackHome ----------------

:n
for %%c in (*.bat *.txt) do type %%c
goto c

:y
IF EXIST cdir.txt TYPE cdir.txt 
::IF ERRORLEVEL 1 ECHO 失败从大到小排
::IF ERRORLEVEL 0 ECHO 成功

:c
echo c

pause