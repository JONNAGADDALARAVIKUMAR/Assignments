#!/bin/bash -x

#Printing the entered value in words
echo -e "\n"
read -p "  ENTER A NUMBER FROM 1,10,100,1000,10000,100000,1000000 TO DISPLAY IN WORDS : " number
case $number in
1)
echo -e "\n\t\t UNIT" ;;
10)
echo -e "\n\t\t TEN" ;;
100)
echo -e "\n\t\t HUNDRED" ;;
1000)
echo -e "\n\t\t THOUSAND" ;;
10000)
echo -e "\n\t\t TEN THOUSANDS" ;;
100000)
echo -e "\n\t\t ONE LAKH" ;;
1000000)
echo -e "\n\t\t TEN LAKHS" ;;
*)
echo -e "\n\tWRONG NUMBER ENTERED" ;;
esac
