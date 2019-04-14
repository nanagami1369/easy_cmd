@echo off
REM 管理者権限でコマンドプロンプトを開く
if "%1"=="cmd" (
    powershell  -NoProfile start-process cmd -ArgumentList '/k easy "&" ""cd /d %CD%""'-verb runas
    exit /B
)
if "%1"=="su" (
    powershell  -NoProfile start-process cmd -ArgumentList '/k easy "&" ""cd /d %CD%""'-verb runas
    exit /B
)
if "%~x1"==".exe" (
    powershell -NoProfile Start-Process %1 -ArgumentList '"%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9" ' -Verb Runas
    exit /B
)
REM コマンドはcmd.exeに流して実行
if not "%1"=="" (
    powershell -NoProfile Start-Process cmd -ArgumentList '/K ""cd /d %CD%"" "&" "easy" "&" "%1" "%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9" ' -Verb Runas
) else (
    rem 引数がなければエラーを返す
    echo コマンド構文が間違っています
    echo sudo [実行するコマンド][実行するコマンドにつける引数]
    exit /B
)
