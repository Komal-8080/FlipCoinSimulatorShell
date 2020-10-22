#!/bin/bash -x

heads=0
tails=0
numberOfFlips=0

while [ $numberOfFlips -le 10 ]
do
	flip=$((RANDOM%2))
if [ $flip -eq 1 ];
then
        #echo "!! Heads Win !!"
	heads=$((heads+1))
else
        #echo "!! Tails Win !!"
	tails=$((tails+1))
fi
((numberOfFlips++))
done

	echo "Heads Win $heads Times"
	echo "Tails Win $tails Times"
