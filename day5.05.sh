#!/bin/bash -x

#Printing entered single digit number in words
echo -e "\n\t"
read -p "    ENTER A SINGLE DIGIT NUMBER : " value
if [ $value == 0 ]
then
    echo -e "\n\tENTERED VALUE IS : ZERO"
elif [ $value == 1 ]
then
    echo -e "\n\tENTERED VALUE IS : ONE"
elif [ $value == 2 ]
then
    echo -e "\n\tENTERED VALUE IS : TWO"
elif [ $value == 3 ]
then
    echo -e "\n\tENTERED VALUE IS : THREE"
elif [ $value == 4 ]
then
    echo -e "\n\tENTERED VALUE IS : FOUR"
elif [ $value == 5 ]
then
    echo -e "\n\tENTERED VALUE IS : FIVE"
elif [ $value == 6 ]
then
    echo -e "\n\tENTERED VALUE IS : SIX"
elif [ $value == 7 ]
then
    echo -e "\n\tENTERED VALUE IS : SEVEN"
elif [ $value == 8 ]
then
    echo -e "\n\tENTERED VALUE IS : EIGHT"
elif [ $value == 9 ]
then
    echo -e "\n\tENTERED VALUE IS : NINE"
else
    echo -e "\n\tWRONG NUMBER ENTERED"
fi
