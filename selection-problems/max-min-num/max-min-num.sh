#!/bin/bash -x

echo number 1
read a
echo number 2
read b
echo number 3
read c
echo number 4
read d
echo number 5
read e


max=$a
min=$a

if [ $b -gt $max ]
then
        max=$b
elif [ $b -lt $min ]
then
        min=$b
else
	echo ''
fi

if [ $c -gt $max ]
then
        max=$c
elif [ $c -lt $min ]
then
        min=$c
else
	echo ''
fi

if [ $d -ge $max ]
then
        max=$d
elif [ $d -le $min ]
then
        min=$d
else
	echo ''
fi

if [ $e -ge $max ]
then
        max=$e
elif [ $e -le $min ]
then
        min=$e
else
	echo ''
fi
echo $max $min

