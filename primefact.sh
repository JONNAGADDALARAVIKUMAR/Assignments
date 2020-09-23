#1/nin/bash -x

#To find prime factors of given number
echo -e "\n"
read -p "Prime Factors of : " num

for ((i=1; i*i <= num; i++ ))
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
  	    fact=$(($i*$i))

	    if [ $(($num%$fact)) -eq 0 ]
  	    then
  		echo $i"  "
  	    fi
  	fi
done
