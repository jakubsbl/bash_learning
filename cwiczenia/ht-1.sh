#!/bin/bash

#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt ht-1.sh pobiera poprzez argumenty nazwy plików tekstowych, a następnie wypisuje pierwszych 10 wierszy każdego z nich."

if [[ $1 == "--help" ]];then
	echo -e $help
	exit 0
fi

for i in $@;do
    echo -e "\nplik $i \n------------------------------------------------"
    head $i
done
