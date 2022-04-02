#!/bin/bash

# Skrypt, który bedzie wyswietlal wszystkich uzytkowników posortowanych alfabetycznie.
# przy parametrze -r ma podawać Z>A
# komenda: cut 


if [[ $1 == "-r" ]];then
echo -e "Wyswietlam wszystkich uzytkownikow w odwrotnej kolejnosci alfabetycznej:\n--------------------------------------------------"
    cut -d ":" -f 1 /etc/passwd | sort -r
else
    echo -e "Wyswietlam wszystkich uzytkownikow w kolejnosci alfabetycznej:\n--------------------------------------------------"
    cut -d ":" -f 1 /etc/passwd | sort
fi