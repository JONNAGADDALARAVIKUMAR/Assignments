#!/bin/bash -x

#Taking three Numbers
echo -e "\n"

read -p "ENTER FIRST NUMBER : " num1
read -p "ENTER SECOND NUMBER : " num2
read -p "ENTER THIRD NUMBER : " num3

#Finding maximum value

if [ $num1 -ge $num2 -a $num1 -ge $num3 ]
then
     echo -e "\n\tMAX : " $num1

elif [ $num2 -ge $num1 -a $num2 -ge $num3 ]
then
     echo -e "\n\tMAX : " $num2

elif [ $num3 -ge $num1 -a $num3 -ge $num1 ]
then
     echo -e "\n\tMAX : " $num3

else
     echo "WRONG ENTRY"
fi

#finding minimum value

if [ $num1 -le $num2 -a $num1 -le $num3 ]
then
     echo -e "\tMIN : " $num1

elif [ $num2 -le $num1 -a $num2 -le $num3 ]
then
     echo -e "\tMIN : " $num2

elif [ $num3 -le $num1 -a $num3 -le $num1 ]
then
     echo -e "\tMIN : " $num3

else
     echo "WRONG ENTRY"
fi

#finding four different arthematic operations

echo -e "\nEnter Your Choice to Do Following Arthematic Operations\n\n\t\t1. A + B * C\t2. C + A / B\n\n\t\t3. A % B + C\t4. A * B + C\n\t"
read -p "    Your Choice : " choice

if [ $choice -eq 1 ]
then
     result=$((num1+num2*num3))
     echo -e "\n\tRESULT : "$result

elif [ $choice -eq 2 ]
then
     result=$((num3+num1/num2))
     echo -e "\n\tRESULT : "$result

elif [ $choice -eq 3 ]
then
     result=$((num1%num2+num3))
     echo -e "\n\tRESULT : "$result

elif [ $choice -eq 4 ]
then
     result=$((num1*num2+num3))
     echo -e "\n\tRESULT : "$result

else
     echo -e "\n\tWRONG CHOICE"
fi
