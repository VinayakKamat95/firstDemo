#!/bin/bash 

for i in `seq 100`
do
#num=$i
#echo $num
firstDigit=$(($i/10))

#echo $firstDigit

secondDigit=$(($i%10))

#echo $secondDigit

if [ $firstDigit -eq $secondDigit ]
then
	repeatedNum[$i]=$i
fi
done
echo ${repeatedNum[@]}
