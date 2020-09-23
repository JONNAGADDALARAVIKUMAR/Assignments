#!/bin/bash -x

#Printing the Entered number in words

echo -e "\n\t"
read -p "    ENTER A SINGLE DIGIT NUMBER : " value

case $value in
0)
echo -e "\n\tENTERED VALUE IS : ZERO" ;;
1)
echo -e "\n\tENTERED VALUE IS : ONE" ;;
2)
echo -e "\n\tENTERED VALUE IS : TWO" ;;
3)
echo -e "\n\tENTERED VALUE IS : THREE" ;;
4)
echo -e "\n\tENTERED VALUE IS : FOUR" ;;
5)
echo -e "\n\tENTERED VALUE IS : FIVE" ;;
6)
echo -e "\n\tENTERED VALUE IS : SIX" ;;
7)
echo -e "\n\tENTERED VALUE IS : SEVEN" ;;
8)
echo -e "\n\tENTERED VALUE IS : EIGHT" ;;
9)
echo -e "\n\tENTERED VALUE IS : NINE" ;;
*)
echo -e "\n\tWRONG NUMBER ENTERED" ;;
esac
