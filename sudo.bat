@echo off
REM �Ǘ��Ҍ����ŃR�}���h�v�����v�g���J��
if "%1"=="cmd" (
	powershell  -Command start-process cmd -ArgumentList '/k %HOME%\bat\main.bat"'-verb runas
	exit /B
)
if "%1"=="su" (
	powershell  -Command start-process cmd -ArgumentList '/k %HOME%\bat\main.bat"'-verb runas
	exit /B
)
if "%1"== (*exe) (
	powershell -Command Start-Process %1 -ArgumentList '"%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9" ' -Verb Runas
	exit /B
)
REM �R�}���h��cmd.exe�ɗ����Ď��s
if not "%1"=="" (
	powershell -Command Start-Process cmd -ArgumentList '/K "%1" "%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9" ' -Verb Runas
) else (
	echo �R�}���h�\�����Ԉ���Ă��܂�
	echo sudo [���s����R�}���h]
	exit /B
)