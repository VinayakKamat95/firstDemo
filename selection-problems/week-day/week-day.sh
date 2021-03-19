#!/bin/bash -x

Monday=1
Tuesday=2
Wednesday=3
Thursday=4
Friday=5
Saturday=6
Sunday=7

echo "Enter number for week days"
read week_day

if [ $week_day -eq 1 ]
then
	echo Monday
elif [ $week_day -eq 2 ]
then
	echo Tuesday
elif [ $week_day -eq 3 ]
then
	echo Wednesday
elif [ $week_day -eq 4 ]
then
	echo Thursday
elif [ $week_day -eq 5 ]
then
	echo Friday
elif [ $week_day -eq 6 ]
then
	echo Saturday
elif [ $week_day -eq 7 ]
then
	echo Sunday
else
	echo "Enter proper number for week days"
fi
