#!/bin/bash -x

random_1=`echo $(($RANDOM%6+1))`
random_2=`echo $(($RANDOM%6+1))`

echo "Two Dice Numbers are : "$random_1","$random_2 #Printing Two dice numbers

random_3=$(($random_1+$random_2)) #Adding Two dice numbers

echo "Sum of two Dies Numbers is : "$random_3
