@echo off
REM cmd.exe‚É“Ç‚İ‚Ü‚¹‚éƒtƒ@ƒCƒ‹
setlocal
set green=[32;1m
set default=[0m

REM ˆ¥A•¶
echo %green%Welcome to my cmd.exe%default%

REM ƒGƒCƒŠƒAƒXƒtƒ@ƒCƒ‹
doskey /macrofile=%OneDrive%/vscode/bat/doskey.txt
endlocal
