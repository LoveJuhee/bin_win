@echo off

chcp 65001

set OLD_PATH=%PATH%
set NEW_PATH=%~dp0;%PATH%
echo %NEW_PATH%

echo ########################################
echo   setting path : %~dp0
echo ----------------------------------------
echo   old path env : %OLD_PATH%
echo ----------------------------------------
echo   new path env : %NEW_PATH%
echo ########################################

SETX OLD_PATH "%OLD_PATH%"
SETX PATH "%NEW_PATH%"

GOTO :eof

REM ERROR
:USAGE
    echo usage : %0 PYTHON_VERSION
