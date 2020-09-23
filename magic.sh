#!/bin/bash/ -x

#Program to print a number Which is imagined by user
echo -e -n "Imagine a Number from 1 to 100 \n\tENTER ok : "
read responce
result=50
current=50

if [ $responce == ok ]
   then
   	echo "Please enter 'G' if your Number Grater than Shown value else enter 'L'\n\tIf it shows your Imagination Number then Enter 'Y' "

   	while [[ $current -ge 0 && $current -le 100 ]]
   	do
		echo -e -n "\t"$result" : "
		read input

		if [[ $input == g || $input == G ]] #If the responce Grater than shown value
		then
		((current++))
   		while [ $current -gt 50 -a $current -le 100 ] #Loop iterates if the number above 50
   		do
   			if [[ $input == g || $input == G ]] #If the responce Grater than shown value
   			then
   				current=$(($((100+$current))/2))
				result=$current
   			fi
   			if [[ $input == l || $input == L ]] #If the responce less than shown value
   			then
   				previous=$current
   				current=$(($((50+$result))/2))
				result=$current
   			fi
			echo -e -n "\t"$result" : "
			read input
			if [[ $input == y || $input == Y ]] #Terminates if the number Occures
			then
			break
			fi
   		done
		else
			 current=$(($((0+$current))/2))

   		while [ $current -gt 0 -a $current -le 50 ] #Loop iterates if the number below 50
   		do
			echo -n -e "\n\t"$current" : "
   			read input
   			if [[ $input == g || $input == G ]] #If the responce Grater than shown value
   			then
   				current=$(($((50+$current))/2))
   			fi
   			if [[ $input == l || $input == L ]]
   			then
   				previous=$current
   				current=$(($((0+$current))/2)) #If the responce Less than shown value
			fi
			if [[ $input == y || $input == Y ]] #Terminates if the number occures
			then
			break
			fi
   		done
		fi
	if [[ $input == y || $input == Y ]]
	then
	echo -e "\t***SUCCESS***"
	break
	fi
   	done
fi
