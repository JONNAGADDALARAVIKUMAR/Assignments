#!/bin/bash/ -x

#Checking sum of three integers is equal to zero or not
for((i=0; i<3; i++))
do
    echo -e -n "\n\tElement "$((i+1))" : "
    read array[$i]
    ((sum+=${array[$i]}))
done

if [ $sum -eq 0 ]
then
    echo -e "\nSum of three integers ("${array[@]}") is  '"$sum"'"
else
    echo -e "\nSum of three integers ("${array[@]}") is not  '0'"
fi
