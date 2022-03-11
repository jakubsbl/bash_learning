#!/bin/bash

if [[ -x "$1" ]];then
	echo "plik $1 istnieje i ma nadane prawo do wykonywania"
else
	echo "plik $1 nie istnieje lub istnieje ale nie ma nadanych praw wykonywania"
fi

