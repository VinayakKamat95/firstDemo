#!/bin/bash -x

Echo "$1"

num=1
i=1
while [ $i -le $1 ]
do
	num=$(($num*2))
	echo $num
	if [ $num -eq 256 ]
	then
		break
	fi
	((i++))
done





