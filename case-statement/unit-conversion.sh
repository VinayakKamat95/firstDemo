#!/bin/bash -x


echo "1. Feet to inch 2.Feet to meter 3.Inch to feet 4.Meter to feet"

echo "Enter Choice for Length conversion"
read choice

case $choice in
	1)
		echo "Enter Length in Feet"
		read feet
		inch=$(($feet*12))
		echo "$feet Feet is equals $inch Inch"
		;;
	2)
		;;
	3)
		echo "Enter Length in Inch"
		read inch
		feet=$(($inch/12))
		echo "$inch Inch is equals $feet Feet"
		;;
	4)
		;;
	*)
		echo "Select proper choice for lenght conversion"
		;;
esac

