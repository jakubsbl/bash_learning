#!/bin/bash

# Skrypt ma za zadanie wyswietlac dowolna linijke tekstu z wybranego pliku tekstowego .. Np. ./skrypt.sh 6 plik.txt
# Wyświetli 6 linijke pliku "plik.txt"


cat -n $2 | head -n $1 | tail -n 1

# nastepna modyfikacja tego skryptu po wpisaniu -r jako 1 argument wyswietli nam dowolna linijke od tylu


# np. skrypt.sh -r 15 plik.txt
# Wyswietli nam 15 od konca linijke tekstu
