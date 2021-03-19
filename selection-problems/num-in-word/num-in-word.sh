#!/bin/bash -x

one=1
two=2
three=3
four=4
five=5
six=6
seven=7
eight=8
nine=9


echo Enter Single Digit Number
read num

if [ $num -eq $one ]
then
	echo one
elif [ $num -eq $two ]
then
	echo two
elif [ $num -eq $three ]
then
	echo three
elif [ $num -eq $four ]
then
	echo four
elif [ $num -eq $five ]
then
	echo five
elif [ $num -eq $six ]
then
	echo six
elif [ $num -eq $seven ]
then
	echo seven
elif [ $num -eq $eight ]
then
	echo eight
elif [ $num -eq $nine ]
then
	echo nine
else
	echo Enter single digit number

fi
