#!/bin/bash 

echo "Think of a number between 1 to 100"
read num

a=1
b=100


while [ 1 ]
do
possibleGuess=$(($b+$a))


guess=$(($possibleGuess/2))
echo is the the number $guess


echo "if number is right correct 1. Greater then $guess 2. less then $guess 3."
read choice

case $choice in
		1)
			echo correct number is $guess
			break
			;;
		2)
			a=$guess
			;;
		3)
			b=$guess
			;;
esac

done


