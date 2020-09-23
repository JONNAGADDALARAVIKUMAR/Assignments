#!/bin/bash -x

#Length unit conversion based on user choice

echo -e "\n\t\tUNIT CONVERSION CALCULATER\\n\t1. Feet to Inch \t\t2. Inch to Feet\n\t3. Feet to Meter\t\t4. Meter to Feet\n"
read -p "YOUR CHOICE : " choice
read -p "ENTER LENGTH : " length

case $choice in
1)
echo -e "\n\t"$(($length*12))"inch" ;;
2)
echo -e "\n\t"$(($length/12)).$(($length%12))"ft" ;;
3)
echo -e "\n\tApproximate length : "$(($length/3))"m" ;;
4)
echo -e "\n\tApproximate length : "$(($length*3))"ft" ;;
esac
