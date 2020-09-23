#!/bin/bash/ -x

#Storing ten #-digit Random Numbers into an array
for((i=0; i<10; i++))
do
    value=`echo $(($RANDOM%1000+1))`

    if [ $value -lt 100 ]
    then
	((value+=100))
    fi
    ((array[i]=$value))
done

echo -e "\n\tTotal elements in array : "${array[@]}

for((i=0; i<10; i++))
do
    for((j=$i+1; j<10; j++))
    do
	if [ ${array[i]} -le ${array[j]} ]
	then
	    temp=${array[i]} #Bobble Sorting
	    array[$i]=${array[j]}
	    array[$j]=$temp
	fi
    done
done

echo -e "\n\tsorted array : "${array[@]}
echo -e "\n\tSecond Largest Number : "${array[1]} #Second Largest Number
echo -e "\n\tSecond smallest Number : "${array[8]} #Second Smallest Number
