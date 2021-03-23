#!/bin/bash -x



echo "* Conversion between the different temperature scales *"

echo "1. Convert Celsius temperature into Fahrenheit (0C - 100C)"

echo "2. Convert Fahrenheit temperatures into Celsius (32F - 212F)"

echo -n "Select your choice (1-2) : "
read choice


function fer-to-cel()
{
# formula Tc=(5/9)*(Tf-32)

tc=$(echo "scale=2;(5/9)*($1-32)"|bc)

echo "$1 F= $tc C"
}


function cel-to-fer()
{

# formula Tf=(9/5)*Tc+32

tf=$(echo "scale=2;((9/5) * $1) + 32" |bc)

echo "$1 C = $tf F"
}

case $choice in
	1)
	echo -n "Enter temperature (C) : "
	read tc
	if [[ $tc -ge 0 && $tc -le 100 ]]
	then
	echo $(cel-to-fer $tc)
	else
	echo "Enter Temperature Range for degCelcius (0-100 C)"
	fi
	;;

	2)
	echo -n "Enter temperature (F) : "
	read tf
	if [[ $tf -ge 32 && $tf -le 212 ]]
	then
	echo $(fer-to-cel $tf)
	else
	echo "Enter Temperature Range for degFahrenheit (32-212 F)"
	fi
	;;

	*)
	echo "Please select 1 or 2 only"
	;;

esac

