#!/bin/bash

#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt skrypt showargs-1.sh, który wypisuje w pierwszym wierszu liczbę argumentów, a w kolejnych osobnych wierszach kolejne argumenty.\nJeśli pierwszym argumentem jest -r, to argumenty są wypisywane w odwrotnej kolejności (pierwszy argument, czyli w tym przypadku opcję należy pominąć).\nW celu wypisania argumentów w odwrotnym porządku zapisz je najpierw do tablicy."

if [[ $1 == "--help" ]];then
	echo -e $help
	exit 0
fi

myArray=( "$@" )


counter=$#

if [[ $1 == "-r" ]];then
    let "counter=counter-1"
    echo $counter
    for (( i=${#myArray[@]}-1 ; i>0 ; i-- )) ; do
        echo "${myArray[i]}"
    done
else
    echo $counter
    for i in ${myArray[@]}; do
        echo $i
    done
fi

