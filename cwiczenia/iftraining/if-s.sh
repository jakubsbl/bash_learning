#!/bin/bash

if [[ -s $1 ]];then
	echo "plik $1 istnieje i jego rozmiar jest wiekszy niz 0 bajtów"
else 
	echo "plik $1 nie istnieje lub istnieje ale jest pusty i jego rozmiar nie przekracza 0 bajtow"
fi
