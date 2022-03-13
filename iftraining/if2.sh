#!/bin/bash



#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt if2 po wpisaniu nazwy katalogu zwroci informacje czy katalog istnieje. \nJesli katalog o podanej nazwie  nie istnieje zostanie stworzony."

if [[ $1 == "--help" ]];then
        echo -e $help
        exit 
fi

if [[ -e $1 ]];then
	echo "katalog $1 istnieje"
else
	mkdir $1
	echo katalog $1 nie zostal znaleziony i zostal stworzony
fi
