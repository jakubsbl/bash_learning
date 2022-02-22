
#!/bin/bash
 
#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="skrypt sprawdza czy w katalogu domowym istnieje plik .bashrc"


if [[ $1 == "--help" ]];then
	echo $help
	exit 0
fi


#if [folder istnieje /tmp];then
#	echo folder istnieje
#else
#	echo folder nie istnieje 
#fi

if [[ -f "$HOME/.bashrc" ]];then
	echo plik istnieje
else 
	echo plik nie istnieje
fi
