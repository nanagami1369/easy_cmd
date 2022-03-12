@echo off
REM cmd.exeÉÇÝÜšét@C
setlocal
set green=[32;1m
set default=[0m

REM ĽAś
echo %green%Welcome to my cmd.exe%default%

REM Ýčt@C(˝žĚob`t@C)đÇÝŢ
call setting_cmd.bat

REM GCAXt@C
doskey /macrofile=%HOME%/bat_commands/doskey.txt
endlocal
REM prompt
PROMPT $E[32;1m$P$E[0m$G
