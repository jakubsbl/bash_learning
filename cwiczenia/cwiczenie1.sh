#!/bin/bash
 
#if $1 ma wartosc --help
#echo wypisuje metode dzialania skryptu
#fi

help="Skrypt informuje nas o istnieniu lub braku folderu tmp"


if [[ $1 == "--help" ]];then
	echo $help
	exit 0
fi


#if [folder istnieje /tmp];then
#	echo folder istnieje
#else
#	echo folder nie istnieje 
#fi

if [ -d tmp ];then
	echo folder istnieje
else 
	echo folder nie istnieje
fi
