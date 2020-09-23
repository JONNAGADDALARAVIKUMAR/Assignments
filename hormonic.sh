#!/bin/bash -x

#Program to print Hormonic series and Nth Hormonic number

echo -e "\n"
read -p "Enter a Number : " num;

echo -e -n "\n\n\tHORMONIC SERIES : "

for((i=1; i<=num ; i++))
do
     value=`awk 'BEGIN{print 1/'$i'}'`
     echo -n " "$value #Printing Hormonic series
     if [ $i -lt $num ]
     then
	echo -n "+"
     fi
     sum=`awk 'BEGIN{print '$sum' + '$value'}'`
done

echo " = "$sum
echo -e "\n\tNth Hormonic Number : "`awk 'BEGIN{print 1/(('$i'-1))}'` #Printing Nth Hormonic Number
