#!/bin/bash


help="Please enter \"name of branch\" as a first argument and as second argument please enter the name of the branch you want to check\nis it up-to-date with the first branch.
\nFor expample: ./isbranchuptodate branch1 master"


if [[ $1 == "--help" ]];then
	echo -e $help
	exit 0
fi

if [[ $# -eq 2 ]];then
    for i in `git log $1 --oneline | awk '{print $1}'`;do
        if [[ "`git log $2 --oneline | grep $i | wc -l`" == "0" ]];then
            echo $i "This commit is behind the \"$1\" branch"
            echo "Please update branch \"$2\""
            break
        else 
            echo "This branch is up-to-date whit \"$1\" branch"
            break 
        fi
    done
else
    echo -e "This script need 2 arguments!\nPlease enter \"branch name\" as a first and second argument"
fi