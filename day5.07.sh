#!/bin/bash -x

echo -e "\n"
read -p "  ENTER A NUMBER FROM 1,10,100,1000,10000,100000,1000000 TO DISPLAY IN WORDS : " number
if [ $number -eq 1 ]
then
    echo -e "\n\t\t UNIT"
elif [ $number -eq 10 ]
then
    echo -e "\n\t\t TEN"
elif [ $number -eq 100 ]
then
    echo -e "\n\t\t HUNDRED"
elif [ $number -eq 1000 ]
then
    echo -e "\n\t\t THOUSAND"
elif [ $number -eq 10000 ]
then
    echo -e "\n\t\t TEN THOUSANDS"
elif [ $number -eq 100000 ]
then
    echo -e "\n\t\t ONE LAKH"
elif [ $number -eq 1000000 ]
then
    echo -e "\n\t\t TEN LAKHS"
else
    echo -e "\n\tWRONG NUMBER ENTERED"
fi
