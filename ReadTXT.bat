@ECHO OFF
::截取字符串
set xgz=徐国忠Hello优秀是一种习惯
echo %xgz%World
echo 原字符串为:%xgz%
echo 截取前5个字符:%xgz:~0,5%
echo 截取最后5个字符:%xgz:~-5%
echo 截取第一个到倒数第6个字符:%xgz:~1,-5%
echo 从第4个字符开始截取5个字符:%xgz:~3,5%
echo 从倒数第14个字符开始截取5个字符:%xgz:~-14,5%

echo 当前时间是:%time% 即 %time:~0,2%点%time:~3,2%分%time:~6,2%秒%time:~9,2%厘秒

::替换字符串
set aa=伟大的中国！我为你自豪
echo 替换前:%aa%
echo 替换后:%aa:中国=中华人民共和国%
echo aa=%aa%
echo %aa%
set aa=%aa:中国=中华人民共和国%
echo aa=%aa%

::字符串合并
set aa=伟大的中国！
set bb=我为你自豪
echo %aa%%bb%

echo aa=%aa%
echo bb=%bb%
set "aa=%aa%%bb%"
echo aa=%aa%


REM 待处理的字符串
set str="AAA BBB CCC"

:STR_VISTOR
REM 看看每次循环后的值，便于理解
echo str = %str%

REM FOR语句是按行进行遍历，也就是一行一次循环，对于我们来说，只有一行字符串，
REM 这个FOR循环肯定只进入一次。而我们是要对字符串进行空格分割后再处理。因此这
REM 里用GOTO语句来实现循环。而FOR语句只需看成是一条语句，这条语句实现了这样的
REM 功能：将字符串分割成两一部分，一部分是第一个空格前的字串，另一部分是剩余的
REM 字串（tokens=1,*）。第一部分保存在 a 变量中，第二部分保存在 b 变量中，这
REM 个 b 是自动的。

for /f "tokens=1,*" %%a in (%str%) do (

    REM 这里可以替换成自己的处理程序，现在只是简单地显示值
    echo   a = %%a

    REM 将剩余字符串赋值给str变量
    set str="%%b"

    goto STR_VISTOR
)


::循环读取txt
for /f "delims=" %%a in (HELP.txt) do (

 ECHO %%a
 PAUSE
) 
pause