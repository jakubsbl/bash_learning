#!/bin/bash

# SKrypt wyswietla wybrana linijke od poczatku dowolnego pliku.
# W przypadku, kiedy pierwszym argumentem jest "-r" skrypt wyswietla wybrana linijke od konca z dowolnego pliku. 
# np. ./skrypt.sh -r 5 plik1.txt
# ---> Skrypt wyswietli 5 od konca linijke pliku plik1.txt
# np. 2 ./skrypt.sh 3 plik2.txt
# ---> Skrypt wyswietli 3 linijke od gory z pliku plik2.txt



if [[ $1 == "-r" ]]
then
	cat -n $3 | tail -n $2 | head -n 1
else
	cat -n $2 | head -n $1 | tail -n 1
fi




