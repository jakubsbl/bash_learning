#!/bin/bash

if [[ -w "$1" ]];then
	echo "plik $1 istnieje i ma nadane prawo zapisywania"
else 
	echo "plik $1 nie istnieje, lub istnieje ale nie ma nadanego prawa do zapisywania"
fi

