#!/bin/bash -x

valid=true
heads=0
tails=0
numberOfFlips=0

while [ $valid ]
do
	flip=$((RANDOM%2))
	echo "$numberOfFlips=$flip"
if [ $flip -eq 1 ];
then
	heads=$((heads+1))
elif [ $flip -eq 0 ];
then
	tails=$((tails+1))
elif [ $heads -eq 21 ];
then
	 echo "!! Head Wins over Tail by $((numberOfFlips-heads)) !!"
break
fi
if [ $tails -eq 21 ];
then
	echo "!! Tail Wins over Head by $((numberOfFlips-tails)) !!"
break
fi
if [[ $heads -eq 21 && $tails -eq 21 ]];
then
	echo "oops!! its a Tie"
break;
fi
((numberOfFlips++))
done


