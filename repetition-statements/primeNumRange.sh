#!/bin/bash 

NUMBERS="2 3 4 5 6 7 8 9 10"

flag=0

for num in $NUMBERS
do


	for ((i=2; i <= $(($num/2)); i++ ))
	do

		if [ $(($num%i)) -eq 0  ]
		then

			flag=1
			break
		fi

	done

	if [ $flag -eq 0 ]
	then
		echo $num "Prime number"
	else
		echo $num "Not Prime number"
	fi
done
