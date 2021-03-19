#!/bin/bash -x

#empCheck=$((RANDOM%3))
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
numWorkingDays=10
totalWorkingHrs=0

for ((day=1; day<=$numWorkingDays; day++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_FULL_TIME)
			workHrs=$(($workHrs+8))
		;;
		$IS_PART_TIME)
     	   workHrs=$(($workHrs+4))
   	;;
		*)
			workHrs=$(($workHrs+0))
	esac
done
salary=$(($EMP_RATE_PER_HR*$workHrs))
echo $salary
