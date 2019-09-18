@echo off
::循环读取txt
::使用delims通过等于号后面的切分字符串获取前者部分

::样例数据
::ASSOC          显示或修改文件扩展名关联。
::ATTRIB         显示或更改文件属性。

::/f指定in内是文件否则认为是字符串
for /f "delims= " %%p in (HELP.txt) do (
    ECHO %%p
)
