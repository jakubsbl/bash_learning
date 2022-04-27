#!/bin/bash


# "x=1" wartosc poczatkowa petli 
# while [[ $x -lt/le/ge/gt/eq ]]
# do
# "polecenie $x"
# x=$(( $x + 1 )) - co ile iterowac


x=1
while [[ $x -le 10 ]];do 
	  echo czesc $x
	x=$(( $x + 1 ))
done
