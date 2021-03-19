#!/bin/bash -x

unit=1
ten=10
hundred=100
thousand=1000
tenThousand=10000
lakh=100000


echo "Enter number for display units"
read units

if [ $units -eq $unit ]
then
	echo unit
elif [ $units -eq $ten ]
then
	echo ten
elif [ $units -eq $hundred ]
then
        echo hundred
elif [ $units -eq $thousand ]
then
	echo thousand
elif [ $units -eq $tenThousand ]
then
	echo tenThousand
elif [ $units -eq $lakh ]
then
	echo lakh
else
	echo "Enter Proper number to display units "
fi
