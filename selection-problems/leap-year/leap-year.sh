#!/bin/bash -x

echo input year
read y
if [[ $(($y%4)) -eq 0 && $(($y%100)) -ne 0 ]]
then
	year="leap year"
elif [ $(($y%400)) -eq 0 ]
then
	year="leap year"
else
	year="not leap year"
fi
echo $y $year 
