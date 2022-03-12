@echo off
REM file is read to cmd.exe
setlocal
set green=[32;1m
set default=[0m

REM hello world
REM echo %green%Welcome to my cmd.exe%default%

REM read local setting file
call setting_cmd.bat

REM alias
doskey /macrofile=%HOME%/bat_commands/doskey.txt
endlocal
REM prompt
PROMPT $E[32;1m$P$E[0m$G
