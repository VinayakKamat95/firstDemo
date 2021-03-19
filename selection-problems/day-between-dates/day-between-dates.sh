#!/bin/bash -x

min=`date -d 'March 20' "+%m"`
echo $min
max=`date -d 'June 20' "+%m"`
echo $max
day=20
echo day
read d
echo month
read m


if [ $m -lt $max ] && [ $m -gt $min ]
then
	echo true

elif [ $m -eq $max ]
then
        if [ $d -le $day ]
        then echo true
        else echo false
        fi
elif [ $m -eq $min ]
then
        if [ $d -ge $day ]
        then echo true
        else echo false
        fi
else echo false
fi


