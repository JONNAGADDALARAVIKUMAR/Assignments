#!/bin/bash -x

#Declaring two associative arrays
declare -A year92=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0)
declare -A year93=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0)
echo $1

for((i=1; i<=50; i++))
do
    year=$(($RANDOM%2))

    if [ $year -eq 0 ] #Selecting yaer array randomly
    then
	month=$(($RANDOM%12+1)) #Selecting month Randomly
	((year92[$month]++))
    else
	month=$(($RANDOM%12+1))
	((year93[$month]++))
    fi
done

months=("JAN" "FEB" "MAR" "APR" "MAY" "JUN" "JUL" "AUG" "SEP" "OCT" "NOV" "DEC")
echo -e "MONTH\tYEAR-92\tYEAR-93\tTOTAL\n" #Printing Table

for((i=1; i<13; i++))
do
    echo -e " "${months[(($i-1))]}"\t  "${year92[$i]}"\t  "${year93[$i]}"\t  "$((${year92[$i]}+${year93[$i]}))
done
