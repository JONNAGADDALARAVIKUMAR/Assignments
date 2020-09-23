#!/bin/bash -x

#Printing factorial of given number

read -p "Enter a Number to print its Factorial : " num
factorial=1

for((i=1; i <= num; i++))
do
    ((factorial*=i))
done
echo $num"! = "$factorial
