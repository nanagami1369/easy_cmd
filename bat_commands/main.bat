@echo off
REM cmd.exe�ɓǂݍ��܂���t�@�C��
setlocal
set green=[32;1m
set default=[0m

REM ���A��
echo %green%Welcome to my cmd.exe%default%

REM �G�C���A�X�t�@�C��
doskey /macrofile=%OneDrive%/vscode/bat/doskey.txt
endlocal
