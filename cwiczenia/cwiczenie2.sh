
#!/bin/bash
 
#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt informuje nas czy podany plik istnieje, jesli nie - tworzy go"


if [[ $1 == "--help" ]];then
	echo $help
	exit 0
fi


#if [folder istnieje /tmp];then
#	echo folder istnieje
#else
#	echo folder nie istnieje 
#fi

if [ -e $1 ];then
	echo plik $1 istnieje
else 
	touch $1
	echo plik $1 nie istnieje i został stworzony
fi



	
