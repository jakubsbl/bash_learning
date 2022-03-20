#!/bin/bash

# Skrypt bedzie sprawdzal typ plikow, ktore podasz jako parametr (lokalizacja pliku) 

# *katalog
# *plik
# *nie istnieje 

if [[ $1 == "--help" ]];then
    echo -e "Skrypt typechech.sh mówi o tym jakiego typu jest plik, ktory podasz jako parametr lub informuje,\nze plik nie istnieje. \nnp. ./typecheck.sh plik123.txt plik123.txt jest katalogiem"
    exit 0
fi

if [[ -e $1 ]] && [[ -d $1 ]];then
    echo $1 jest katalogiem
elif [[ -e $1 ]] && [[ -f $1 ]];then
    echo $1 jest plikiem
else
    echo $1 nie istnieje
fi
