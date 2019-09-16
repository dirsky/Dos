@echo off
setlocal enabledelayedexpansion
::type nul>%%f\.gitkeep
::判断文件夹if exist %%f if exist %%f\nul
for /f "delims="  %%f in ('dir /s /b /a:d') do (
    ::注释的方案没有考虑空文件夹
    ::if exist %%f if exist %%f\nul type nul>%%f\.gitkeep
    set n=0
    for /f %%j in ('dir "%%f" /a /b') do set /a n+=1
    if !n!==0 type nul>%%f\.gitkeep
)