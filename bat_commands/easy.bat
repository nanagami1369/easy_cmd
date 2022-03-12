@echo off
REM file is read to cmd.exe
if not "%ReadScript%"=="true" (
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
)
set ReadScript=true

REM prompt
PROMPT $E[32;1m$P$E[0m$G
