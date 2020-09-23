#!/bin/bash/ -x

#Creating an associative array
declare -A assoArray
assoArray=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0) #Storing Dice numbers as keys and occurances as values

while [ 1 -gt 0 ] #Contineous loop
do
    i=$(($RANDOM%6+1))
    ((assoArray[$i]++)) #increasing Dice number key's value by one

    if [ ${assoArray[$i]} -eq 10 ] #Checking for value 10 occurances of atleast one dice number
    then
	break
    fi
done

echo -e "\nKEYS   : "${!assoArray[@]}
echo "VALUES : "${assoArray[@]}
echo "MAX : "$i" - "${assoArray[$i]} #Printing Dice number which occured 10 times

less=7

for((j=1; j<=6; j++))
do
    if [ $less -ge ${assoArray[$j]} ]
    then
	less=${assoArray[$j]}
	key=$j
    fi
done
echo "MIN : "$key" - "$less #Printing Dice number which occured less times
