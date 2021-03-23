#!/bin/bash -x

echo "Enter the Number"
read num
flag=0

for ((i=2; i <= $(($num/2)); i++ ))
do
	echo "$i"
	if [ $(($num%i)) -eq 0  ]
	then

		flag=1
	fi

done
if [ $flag -eq 0 ]
then
	echo "Prime number"
else
	echo "Not Prime number"
fi
