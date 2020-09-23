#!/bin/bash -x

#Printing week day from user input 1-7
echo -e "\n"
read -p "  ENTER A NUMBER FROM 1-7 TO DISPLAY WEEK DAY : " week
case $week in
1)
echo -e "\n\t\t SUNDAY" ;;
2)
echo -e "\n\t\t MONDAY" ;;
3)
echo -e "\n\t\t TUESDAY" ;;
4)
echo -e "\n\t\t WEDNESDAY" ;;
5)
echo -e "\n\t\t THURSDAY" ;;
6)
echo -e "\n\t\t FRIDAY" ;;
7)
echo -e "\n\t\t SATURDAY" ;;
*)
echo -e "\n\tWRONG CHOICE" ;;
esac
