#!/bin/bash -x

#Checking the given number is prime or not
prime()
{
    num=$1
    total=0
    for((i=1; i <= num; i++))
    do
    	if [[ num%$i -eq 0 ]] ;
    	then
    	((total++))
    	fi
    done

    if [ $total -eq 2 ]
    then
    	echo -e "\n\t"$num" is a Prime Number"
    else
    	echo -e "\n\t"$num" is not a prime number"
    fi
}

#Checking the number palindrome or not
Palindrome()
{
    echo -e -n "\n\tEnter a number to check palindrome or not as well as prime or not : "
    read number1
    remainder=0
    number2=$number1

    while [ $number1 -gt 0 ]
    do
 	remainder+=$(($number1%10))
	((number1/=10))
	echo $remain
    done

    if [ $number2 -eq $remainder ]
    then
	echo -e "\n\t"$number2" is a Palindrome"
    else
	echo -e "\n\t"$number2" is not a Palindrome"
    fi

    prime $number2 #Calling Prime function
}

#Taking input to check the given number prime or not
read -p "      Enter a Number to check whether Prime or not : " num
prime $num #prime function call
Palindrome #palindrome function call
