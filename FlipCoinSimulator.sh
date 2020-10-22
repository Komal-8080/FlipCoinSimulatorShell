#!/bin/bash -x

heads=1
tails=0

flip=$((RANDOM%2))

if [ $flip -eq $heads ];
then
        echo "!! Heads Win !!"
else
        echo "!! Tails Win !!"
fi
