::循环读取txt
::使用delims的目的主要是通过切分字符串获得可编辑的字符串以便于进行下一步编辑。
::样例数据
::ASSOC          显示或修改文件扩展名关联。
::ATTRIB         显示或更改文件属性。

::/f的目的是指定in后面的是一个文件否则认为是一个字符串
for /f "delims=" %%a in (HELP.txt) do (
    ECHO %%a
    PAUSE
)
