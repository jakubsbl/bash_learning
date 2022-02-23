

#!/bin/bash
 
#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt wyswietla podane argumenty w odwrotnej kolejnosci"


if [[ $1 == "--help" ]];then
	echo $help
	exit 0
fi

#-----------------------------------------------------------------

for i in $*
do
	echo "$i"
	tac
done
