#!/bin/bash

#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt if3 podaje nam wlasciwosci wprowadzonej przez nas liczby\nW tym konkretnym przypadku, mowi czy liczba jest wieksza czy mniejsza lub rowna liczbie 100"

if [[ $1 == "--help" ]];then
        echo -e $help
        exit
fi

clear

echo -n "wprowadz dowolna liczbe: "
read VAR

if [[ $VAR -gt 100 ]]
then
	echo "Wprowadzona liczba jest wieksza niz liczba 100."
else
	echo "Wprowadzona liczba jest mniejsza lub rowna 100."
fi
