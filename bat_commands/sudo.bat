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
if "%~x1"==".exe" (
    powershell -NoProfile Start-Process %1 -ArgumentList '"%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9" ' -Verb Runas
    exit /B
)
REM �R�}���h��cmd.exe�ɗ����Ď��s
if not "%1"=="" (
    powershell -NoProfile Start-Process cmd -ArgumentList '/K ""cd /d %CD%"" "&" "easy" "&" "%1" "%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9" ' -Verb Runas
) else (
    rem �������Ȃ���΃G���[��Ԃ�
    echo �R�}���h�\�����Ԉ���Ă��܂�
    echo sudo [���s����R�}���h][���s����R�}���h�ɂ������]
    exit /B
)
