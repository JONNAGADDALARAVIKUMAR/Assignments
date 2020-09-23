#!/bin/bash/ -x

#Checking the Entered year is leap or not
read -p "Enter Year : " year
if [[ $year%400 -eq 0 || $year%4 -eq 0 && $year%100 -ne 0 ]]
then
echo -e "\n"$year" is a Leap Yeaar"
else
echo -e "\n"$year" is not a Leap Yeaar"
fi
