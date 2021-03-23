#!/bin/bash -x

Echo "Enter the number N"
read n

for ((num=1,i=1; i<=n; i++))
do
	num=$(($num*2))
	echo $num
done
