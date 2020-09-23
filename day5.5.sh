#!/bin/bash -x

#Converting inch to feet
echo -e "\nA. 1ft = 12inch then 42inch = "$((42/12)).$((42%12))ft"\n"

#converting Area from feet to meter

length=`awk 'BEGIN{print 60/3.2809}'`
breadth=`awk 'BEGIN{print 40/3.2809}'`
echo -e "B. Plot of 60 feet x 40 feet in meters : "$length"m x "$breadth"m\n"

#converting sq feet to acres

area=`awk 'BEGIN{print (60*40*25)/43560}'`
echo "C. Area of 25 plots in acres is : "$area
