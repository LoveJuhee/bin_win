@echo off

chcp 65001

IF "%1"=="" GOTO USAGE

set ADD_P1=C:\Python\%1
set ADD_P2=%ADD_P1%\Scripts
set PYTHON=%ADD_P1%\Python.exe

IF NOT EXIST %PYTHON% (
    echo invalid python path : %ADD_P1%
    GOTO USAGE
)

echo python path : %ADD_P1%
set P=%ADD_P1%;%ADD_P2%;%PATH%
set PATH=%P%

pip install --upgrade pip
pip install virtualenv
pip install --upgrade virtualenv

GOTO :eof

REM ERROR
:USAGE
    echo usage : %0 PYTHON_VERSION
