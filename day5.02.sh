#!/bin/bash -x

read -p "MONTH : " month
read -p "DAY : " date

#Printing true if the entered date is in March 20 to june 20, else false
if [[ $month == march || $month == March || $month == MARCH && $date -ge 20 && $date -le 31 ]]
then
    echo "RESULT : TRUE"
elif [[ $month == april || $month == April || $month == APRIL && $date -ge 1 && $date -le 30 ]]
then
    echo "RESULT : TRUE"
elif [[ $month == may || $month == May || $month == MAY && $date -ge 1 && $date -le 31 ]]
then
    echo "RESULT : TRUE"
elif [[ $month == june && $date -ge 1 || $month == June || $month == JUNE && $date -le 20 ]]
then
    echo "RESUT : TRUE"
else
    echo "RESULT : FALSE"
fi
