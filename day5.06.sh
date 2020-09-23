#!/bin/bash -x

echo -e "\n"
read -p "  ENTER A NUMBER FROM 1-7 TO DISPLAY WEEK DAY : " week
if [ $week -eq 1 ]
then
    echo -e "\n\t\t SUNDAY"
elif [ $week -eq 2 ]
then
    echo -e "\n\t\t MONDAY"
elif [ $week -eq 3 ]
then
    echo -e "\n\t\t TUESDAY"
elif [ $week -eq 4 ]
then
    echo -e "\n\t\t WEDNESDAY"
elif [ $week -eq 5 ]
then
    echo -e "\n\t\t THURSDAY"
elif [ $week -eq 6 ]
then
    echo -e "\n\t\t FRIDAY"
elif [ $week -eq 7 ]
then
    echo -e "\n\t\t SATURDAY"
else
    echo -e "\n\tWrong Number Entered"
fi
