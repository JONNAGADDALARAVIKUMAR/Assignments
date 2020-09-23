#!/bin/bash -x

echo -e "\n COIN TOSS GAME\n"
result=$(($RANDOM%2))

if [ $result -eq 0 ]
then
    echo -e "\tHEAD"
else
    echo -e "\tTAIL"
fi
