#!/bin/bash -x

#Generation of single digit Random Number
random=`echo $RANDOM`

echo "The Random Number Between 0-9 is : "$(($random%10))
