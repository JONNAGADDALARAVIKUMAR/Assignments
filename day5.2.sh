#1/bin/bash -x

#Generation of a Dice Number
random=`echo $RANDOM`

echo "Dice No : "$(($random%6+1))
