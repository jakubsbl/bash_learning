
#!/bin/bash
 
#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt wyswietla wszystkie pliki znajdujace sie w obecnym katalogu, nie wyswietla folderow"


if [[ $1 == "--help" ]];then
	echo $help
	exit 0
fi


for i in $(ls)
do
	if [[ -f $i ]]; then
	echo "plik $i"
fi;
done;
