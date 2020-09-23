#!/bin/bash -x

#Printing Powers of 2 table up to the user choice from command line argument
value=1
num=$1
   echo "  -------------------------------"
for((i=1; i<=num; i++))
do
   ((value*=2))
   echo -e "  |\t"2^$i"\t|\t"$value"\t|\n  -------------------------------"
done
