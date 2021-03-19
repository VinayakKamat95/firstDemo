#!/bin/bash -x


echo "Enter number for week days"
read week_day

case $week_day in
	1)
                echo Monday
                ;;
	2)
                echo Tuesday
                ;;
	3)
                echo Wednesday
                ;;
	4)
                echo Thursday
                ;;
	5)
                echo Friday
                ;;
	6)
                echo Saturday
                ;;
	7)
                echo Sunday
                ;;
        *)
                echo "Enter number for week days"
                ;;
esac

