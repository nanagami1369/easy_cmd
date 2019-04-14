@echo off
REM cmd.exe‚É“Ç‚İ‚Ü‚¹‚éƒtƒ@ƒCƒ‹
setlocal
set green=[32;1m
set default=[0m

REM ˆ¥A•¶
echo %green%Welcome to my cmd.exe%default%

REM İ’èƒtƒ@ƒCƒ‹(‚½‚¾‚Ìƒoƒbƒ`ƒtƒ@ƒCƒ‹)‚ğ“Ç‚İ‚Ş
call setting_cmd.bat

REM ƒGƒCƒŠƒAƒXƒtƒ@ƒCƒ‹
doskey /macrofile=%HOME%/bat_commands/doskey.txt
endlocal
