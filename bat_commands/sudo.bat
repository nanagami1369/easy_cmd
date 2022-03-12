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
REM 管理者権限でPowerShellを起動するコマンド
if "%1"=="posh" (
    powershell  -NoProfile start-process powershell.exe -verb runas
    exit /B
)
if "%1"=="pwsh" (
    powershell  -NoProfile start-process pwsh.exe -ArgumentList '" -WorkingDirectory" "%CD%"' -verb runas
    exit /B
)
REM [.exe]がついていた場合はアプリ自体を環境変数で起動するように変更
if "%~x1"==".exe" (
    powershell -NoProfile Start-Process "%*" -Verb Runas
    exit /B
)
REM コマンドはcmd.exeに流して実行
if not "%1"=="" (
    powershell -NoProfile Start-Process cmd -ArgumentList '/k ""cd /d %CD%"" "&" "easy" "&" "%*"' -Verb Runas
) else (
    rem 引数がなければエラーを返す
    echo コマンド構文が間違っています
    echo sudo [実行するコマンド][実行するコマンドにつける引数]
    exit /B
)
