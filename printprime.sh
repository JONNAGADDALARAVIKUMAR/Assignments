#1/nin/bash -x

#To print Prime numbers up to given value
echo -e "\n"
read -p "Prime Numbers upto ? : " num

for ((i=1; i <= num; i++ ))
do
    check=0

    for((j=1; j <= i; j++ ))
    do
	if [ $((i%j)) -eq 0 ]
	then
	((check++))
	fi
    done

    if [ $check -eq 2 ]
    then
	echo -e -n "\t"$i
    fi

    if [[ $i%10 -eq 0 ]]
    then
	echo
    fi
done
