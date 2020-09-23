#!/bin/bash/ -x

#Gambler betting result
money=100 #Initial money
win=0

for(( i=0 ; $money < 200 && $money > 0 ; i++ )) #Loop runs up to Getting 200 or Zero money
do
    if [ $(($RANDOM%2)) -eq 0  ]
    then
    ((money++)) #If Win Money increased by re 1
    	((win++))
    else
     	((money--)) #If Loos Money decreased by re 1
    fi
done

echo -e "Number of bets : "$i"\nNumber of winnings : "$win
echo "money : "$money
