#!/bin/bash -x

max=0
min=1000
echo -e "\nFIVE three-digit Random Numbers are"

for((i=1; i<=5; i++))
do
    random=$(($RANDOM%1000))

    if [ $random -lt 100 ] #if the random number is below 100 then it adds '100'
    then
	((random+=100))
    fi
    echo  "   "$random
    if [ $random -ge $max ]
    then
	max=$random #finding maximum number
    fi
    if [ $min -ge $random ]
    then
	min=$random #finding minimum number
    fi
done

echo -e "\nMAX : "$max
echo "MIN : "$min
