#!/bin/bash -x

#printing Powers of 2 based on user choice up to 2^n = 256
value=1
i=1
num=$1
echo "  -------------------------------"
while((i<=num))
do
     ((value*=2))
     echo -e "  |\t"2^$i"\t|\t"$value"\t|\n  -------------------------------"
     ((i++))

     if [ $value -ge 256 ]
     then
	break
     fi
done
