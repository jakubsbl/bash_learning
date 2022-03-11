#!/bin/bash



echo -n "Wprowadz dowolna liczbe: "
read liczba

if [[ $liczba -gt 10 ]]
then
  echo "liczba jest wieksza niz 10."
elif [[ $liczba -eq 10 ]]
then
  echo "Wprowadzona liczba jest rowna 10"
else
  echo "Liczba jest mniejsza niz 10."
fi
