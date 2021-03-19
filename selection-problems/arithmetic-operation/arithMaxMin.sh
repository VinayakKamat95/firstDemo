#!/bin/bash -x

echo number 1
read a
echo number 2
read b
echo number 3
read c

add_mul=$(($a+$b*$c))
mod_add=$(($a%$b+$c))
add_div=$(($a+$b/$c))
mul_add=$(($a*$b+$c))

max=$add_mul
min=$add_mul

if [ $mod_add -gt $max ]
then
	max=$mod_add
elif [ $mod_add -lt $min ]
then
	min=$mod_add
else
	echo c
fi

if [ $add_div -gt $max ]
then
	max=$add_div
elif [ $add_div -lt $min ]
then
	min=$add_div
else
	echo c
fi

if [ $mul_add -ge $max ]
then
	max=$mul_add
elif [ $mul_add -le $min ]
then
	min=$mul_add
else
	echo c
fi
echo $max $min

