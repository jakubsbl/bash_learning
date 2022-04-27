#!/bin/bash



#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt if1 po poleceniu \"dzisiejsza_data\" wyswietli aktualna date i godzine"

if [[ $1 == "--help" ]];then
	echo -e $help
	exit 0
fi

if [[ $1 == "dzisiejsza_data" ]];then
	echo `date` 
fi


