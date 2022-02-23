#!/bin/bash

#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="skrypt showargs-2.sh, który działa tak samo jak skrypt showargs-1.sh, ale jego poprawne działanie nie wymaga użycia tablicy do odwrócenia kolejności argumentów"

if [[ $1 == "--help" ]];then
	echo -e $help
	exit 0
fi

counter=$#

if [[ $1 == "-r" ]];then
    let "counter=counter-1"
    echo $counter
    for i in $@;do
        echo $i
    done | tac | head -n $counter
else echo $counter
    for i in $@;do
        echo $i
    done 
fi


