@echo off
setlocal enabledelayedexpansion
::type nul>%%f\.gitkeep
::�ж��ļ���if exist %%f if exist %%f\nul
for /f "delims="  %%f in ('dir /s /b') do (
    ::ע�͵ķ���û�п��ǿ��ļ���
    ::if exist %%f if exist %%f\nul type nul>%%f\.gitkeep
    set n=0
    for /f %%j in ('dir "%%f" /a /b') do set /a n+=1
    if !n!==0 type nul>%%f\.gitkeep
)