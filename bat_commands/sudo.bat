@echo off
REM �Ǘ��Ҍ����ŃR�}���h�v�����v�g���J��
if "%1"=="cmd" (
    powershell  -NoProfile start-process cmd -ArgumentList '/k easy "&" ""cd /d %CD%""'-verb runas
    exit /B
)
if "%1"=="su" (
    powershell  -NoProfile start-process cmd -ArgumentList '/k easy "&" ""cd /d %CD%""'-verb runas
    exit /B
)
REM �Ǘ��Ҍ�����PowerShell���N������R�}���h
if "%1"=="posh" (
    powershell  -NoProfile start-process powershell.exe -verb runas
    exit /B
)
if "%1"=="pwsh" (
    powershell  -NoProfile start-process pwsh.exe -ArgumentList '" -WorkingDirectory" "%CD%"' -verb runas
    exit /B
)
REM �Ǘ��Ҍ�����Windows Terminal���N������R�}���h
if "%1"=="wt" (
    powershell  -NoProfile Start-Process wt.exe -ArgumentList '"new-tab --startingDirectory" "%CD%"' -verb runas
    exit /B
)

REM [.exe]�����Ă����ꍇ�̓A�v�����̂����ϐ��ŋN������悤�ɕύX
if "%~x1"==".exe" (
    powershell -NoProfile Start-Process "%*" -Verb Runas
    exit /B
)
REM �R�}���h��cmd.exe�ɗ����Ď��s
if not "%1"=="" (
    powershell -NoProfile Start-Process cmd -ArgumentList '/k ""cd /d %CD%"" "&" "easy" "&" "%*"' -Verb Runas
) else (
    rem �������Ȃ���΃G���[��Ԃ�
    echo �R�}���h�\�����Ԉ���Ă��܂�
    echo sudo [���s����R�}���h][���s����R�}���h�ɂ������]
    exit /B
)
