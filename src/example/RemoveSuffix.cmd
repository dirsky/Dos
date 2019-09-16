@Echo Off
::移除文件的后缀
for %%f in (*.*) do call :rn "%%f"
goto :eof

:rn
set fn=%1
set fn0=%fn:^^=^%
set fn=%fn:^^=^%

::需要删除的内容
set fn=%fn:【北京尚学堂·百战程序员】=%
set fn=%fn:【尚学堂·百战程序员】=%

ren %fn0% %fn%
goto :eof