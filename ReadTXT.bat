@ECHO OFF
::��ȡ�ַ���
set xgz=�����Hello������һ��ϰ��
echo %xgz%World
echo ԭ�ַ���Ϊ:%xgz%
echo ��ȡǰ5���ַ�:%xgz:~0,5%
echo ��ȡ���5���ַ�:%xgz:~-5%
echo ��ȡ��һ����������6���ַ�:%xgz:~1,-5%
echo �ӵ�4���ַ���ʼ��ȡ5���ַ�:%xgz:~3,5%
echo �ӵ�����14���ַ���ʼ��ȡ5���ַ�:%xgz:~-14,5%

echo ��ǰʱ����:%time% �� %time:~0,2%��%time:~3,2%��%time:~6,2%��%time:~9,2%����

::�滻�ַ���
set aa=ΰ����й�����Ϊ���Ժ�
echo �滻ǰ:%aa%
echo �滻��:%aa:�й�=�л����񹲺͹�%
echo aa=%aa%
echo %aa%
set aa=%aa:�й�=�л����񹲺͹�%
echo aa=%aa%

::�ַ����ϲ�
set aa=ΰ����й���
set bb=��Ϊ���Ժ�
echo %aa%%bb%

echo aa=%aa%
echo bb=%bb%
set "aa=%aa%%bb%"
echo aa=%aa%


REM ��������ַ���
set str="AAA BBB CCC"

:STR_VISTOR
REM ����ÿ��ѭ�����ֵ���������
echo str = %str%

REM FOR����ǰ��н��б�����Ҳ����һ��һ��ѭ��������������˵��ֻ��һ���ַ�����
REM ���FORѭ���϶�ֻ����һ�Ρ���������Ҫ���ַ������пո�ָ���ٴ��������
REM ����GOTO�����ʵ��ѭ������FOR���ֻ�迴����һ����䣬�������ʵ����������
REM ���ܣ����ַ����ָ����һ���֣�һ�����ǵ�һ���ո�ǰ���ִ�����һ������ʣ���
REM �ִ���tokens=1,*������һ���ֱ����� a �����У��ڶ����ֱ����� b �����У���
REM �� b ���Զ��ġ�

for /f "tokens=1,*" %%a in (%str%) do (

    REM ��������滻���Լ��Ĵ����������ֻ�Ǽ򵥵���ʾֵ
    echo   a = %%a

    REM ��ʣ���ַ�����ֵ��str����
    set str="%%b"

    goto STR_VISTOR
)


::ѭ����ȡtxt
for /f "delims=" %%a in (HELP.txt) do (

 ECHO %%a
 PAUSE
) 
pause