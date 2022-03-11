#!/bin/bash

#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt ht-2.sh pobiera poprzez argumenty nazwy plików tekstowych, a następnie wypisuje 10 pierwszych i ostatnich\nwierszy każdego z nich.\nJeśli plik nie jest typu ‘text’, to wyprowadzany jest stosowny komunikat. \"This file is not text file\" "

if [[ $1 == "--help" ]];then
	echo -e $help 
	exit 0
fi

#------------------------------------------------------------------------------------------------


for i in $@;do
    if [[ `file $i | grep text | wc -l` == '0' ]];
        then echo "file is not text file"; 
    else
    echo -e "\nplik $i HEAD \n------------------------------------------------------"
    head $i
    echo -e "\nplik $i TAIL \n------------------------------------------------------"
    tail $i 
    fi
done