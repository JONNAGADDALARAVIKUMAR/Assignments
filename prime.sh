#!/bin/bash -x

#To check wether the given number is prime or not
read -p "Enter a Number to check whether Prime or not : " num

for((i=1; i <= num; i++))
do
    if [[ num%$i -eq 0 ]] ;
    then
	((total++))
    fi
done

if [ $total -eq 2 ]
then
    echo $num" is a Prime Number"
else
    echo $num" is not a prime number"
fi
