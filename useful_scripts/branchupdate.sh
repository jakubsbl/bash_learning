#!/bin/bash

#HELP: 
#script is make update of chosen branch (up to date with master)


git pull origin $1 : $1
git pull master
git checkout $1
git merge origin master
git push origin HEAD
