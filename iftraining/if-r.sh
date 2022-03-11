#!/bin/bash

if [[ -r "$1" ]];then
	echo "plik $1 istnieje i ma uprawnienia odczytu"
else
	echo "plik $1 nie istnieje lub istnieje ale nie ma prawa odczytu"
fi
