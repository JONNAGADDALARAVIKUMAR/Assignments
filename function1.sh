#!/bin/bash -x

#Temperature Unit Conversion Based on User choice

#Function to Convert temperature from DegC to DegF
degC()
{
    echo -e -n "\n\t Enter Temp in DegC : "
    read temp

    if [ $temp -ge 0 -a $temp -le 100 ]
    then
    	converted=`awk 'BEGIN{print '$temp'*1.8+32}'`
    	echo -e "\n    \t"$temp" degC = "$converted" DegF"
    else
    	echo -e "\nEntered Temperature not in Range of 0 - 100"
    fi
}


#Function to Convert temperature from DegF to DegC
degF()
{
    echo -e -n "\n\t Enter Temp in DegF : "
    read temp

    if [ $temp -ge 32 -a $temp -le 212 ]
    then
    	temp2=$(($temp-32))
    	converted=`awk 'BEGIN{print '$temp2'*0.555555}'`
    	echo -e "\n    \t"$temp" degF = "$converted" DegC"
    else
    	echo -e "\nEntered Temperature not in Range of 32 - 212"
    fi
}

#Taking user choice
echo -e -n "Enter your choice for Temperature  Unit conversion\n\n\t\ta. DegC - DegF\n\t\tb. DegF - DegC\n\tChoice : "
read choice

if [[ $choice == a || $choice == A ]]
then
    degC #Function call

elif [[ $choice == b || $choice == B ]]
then
    degF #Function call
fi


