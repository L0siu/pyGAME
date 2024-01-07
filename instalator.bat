@echo off

:: Sprawdza, czy Python jest zainstalowany
python --version >NUL 2>&1
if %errorlevel% neq 0 (
    echo Python nie jest zainstalowany. Instalowanie Pythona...
    start /wait python-3.12.1-amd64.exe /quiet InstallAllUsers=1 PrependPath=1
) else (
    echo Python jest już zainstalowany.
)

:: Sprawdza, czy pygame jest zainstalowany
python -m pip show pygame >NUL
if %errorlevel% neq 0 (
    echo Instalacja pakietu pygame...
    python -m pip install pygame
) else (
    echo Pakiet pygame jest już zainstalowany.
)

echo Uruchamianie skryptu...
python main.py

pause