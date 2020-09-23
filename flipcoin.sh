#!/bin/bash -x

#Printing Head and Tail up to getting either head or tail 11 times

echo -e "\n COIN TOSS GAME\n"
result=1
head=0
tail=0

while [ $head -lt 11 -a $tail -lt 11 ] #Condition to check up to 11 times
do
    result=$(($RANDOM%2))
    if [ $result -eq 0 ]
    then
	((head++))
    	echo -e "\t"$(($head))" .HEAD"
    else
    	((tail++))
    	echo -e "\t"$(($tail))" .TAIL"
    fi
done
