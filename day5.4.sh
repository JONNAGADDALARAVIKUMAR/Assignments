#!/bin/bash -x
#Generating five two-digit random numbers
echo -n "Five two digit numbers : "
for((i=1; i<6; i++))
do
    random=$(($RANDOM%100))

    if [ $random -le 10 ]
    then
	((random+=10))
    fi

    echo -n $random" "
    ((sum+=$random)) #Adding all Random numbers

done

#printing sum and avg
echo -e "\nSUM : "$sum"\nAVG : "$(($sum/5))
