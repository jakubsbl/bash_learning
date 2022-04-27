#!/bin/bash

# Napisz skrypt, który będzie przyjmował dowolną ilość parametrów.
# Parametrami beda lokalizacje plikow
# Bedzie wyswietlal zawartosc plikow 
# Jezeli podasz parametr -n "liczba" na poczatku to ma wyswietlac pierwsze "liczba" linijek tekstu dla kazdego pliku 
# np. skrypt.sh -n 5 /etc/passwd /etc/shadow /home/jakub/costam
# Jezeli plik nie istnieje, ma wyswietlic stosowny komunikat.

for i in $@;do
    if [[ "$i" == "-n" ]];then
        head -$2 $@
        exit 1
    elif [[ -e "$i" ]];then
        echo -e "\nplik $i \n------------------------------------------------------------"
        cat $i
    else 
        echo "plik nie istnieje"
    fi
done
