#!/bin/bash

#-gt    is greater than
#-le    is less than or equal to


echo "Podaj dowolna liczbe"
read liczba

if [[ $liczba -le 10 ]];then
	echo "Podana liczba jest mniejsza lub rowna 10"
else
	echo "Podana liczba jest wieksza niz 10"
fi


