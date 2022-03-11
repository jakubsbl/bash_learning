#!/bin/bash

if [[ -d "$1" ]];then
	echo "Plik istnieje i jest to katalog"
else 
	echo "Plik nie istnieje, lub istnieje ale nie jest katalogiem"
fi

