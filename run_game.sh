#!/bin/bash

# UWAGI:
# Ten skrypt jest przeznaczony do uruchamiania w systemach Linux.
# Zakłada, że używany jest Python 3. Jeśli używasz innej wersji Pythona, zastąp 'python3' odpowiednim poleceniem.
# Skrypt używa menedżera pakietów 'apt-get', który jest standardowy w dystrybucjach opartych na Debianie, takich jak Ubuntu.
# W innych dystrybucjach Linuxa, należy dostosować polecenia instalacji do używanego menedżera pakietów.
# Użycie 'sudo' może być wymagane do instalacji pakietów. Zostaniesz poproszony o wprowadzenie hasła użytkownika.

# Instrukcje Uruchamiania:
# 1. Otwórz terminal w folderze, gdzie znajduje się plik 'run_game.sh'.
# 2. Nadaj plikowi prawa do wykonania poleceniem: 'chmod +x run_game.sh'.
# 3. Uruchom skrypt poleceniem: './run_game.sh'.

# Sprawdza, czy Python jest zainstalowany
if ! command -v python3 &> /dev/null
then
    echo "Python nie jest zainstalowany. Instalowanie Pythona..."
    sudo apt-get update
    sudo apt-get install python3
else
    echo "Python jest już zainstalowany."
fi

# Sprawdza, czy pygame jest zainstalowany
if ! python3 -m pip show pygame &> /dev/null
then
    echo "Instalacja pakietu pygame..."
    python3 -m pip install pygame
else
    echo "Pakiet pygame jest już zainstalowany."
fi

echo "Uruchamianie skryptu..."
python3 main.py