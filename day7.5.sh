#!/bin/bash/ -x

#Printing twice repeated numbers from 1-100
position=0
for((i=1; i<=100; i++))
do
    if [[ $i%11 -eq 0 ]]
    then
	((array[position]=$i))
	((position++))
    fi
done
echo -e "\n\tTwice repeated numbers in the range of 1-100 from an Array are : "${array[@]}
