@Echo Off
::�Ƴ��ļ��ĺ�׺
for %%f in (*.*) do call :rn "%%f"
goto :eof

:rn
set fn=%1
::^��ת���ַ�����ݳ�����һ��^�滻^^���������ֵ�ת������
set fn0=%fn:^^=^%
set fn=%fn:^^=^%

::��Ҫɾ��������
set fn=%fn:��������ѧ�á���ս����Ա��=%
set fn=%fn:����ѧ�á���ս����Ա��=%

ren %fn0% %fn%
goto :eof