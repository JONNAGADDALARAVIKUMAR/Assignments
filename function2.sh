#!/bin/bash/ -x

#Checking the given two numbers are palindromes or not

#Function Decleration
Palindrome()
{
    remain=0
    number1=$1
    number2=$1
    while [ $number1 -gt 0 ] #Loop for Reversing
    do
    	((remainder=number1%10))
    	((remain=remain*10+remainder))
    	((number1/=10))
    done

    if [ $number2 -eq $remain ] #Checking Palindrome or not
    then
    	echo -e "\n\t"$number2" is a Palindrome"
    else
    	echo -e "\n\t"$number2" is not a Palindrome"
    fi
}

#Taking input from user
echo -e -n "\n\tenter Two numbers\n\tEnter First Number : "
read number1
Palindrome $number1 #Function call First time
echo -e -n "\n\tEnter Second Number : "
read number2
Palindrome $number2 #Function call Second time
