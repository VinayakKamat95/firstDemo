#!/bin/bash -x


echo "Enter number for display units"
read units

case $units in
	1)
                echo unit
                ;;
	10)
                echo ten
                ;;
	100)
                echo hundred
                ;;
	1000)
                echo thousand
                ;;
	10000)
                echo tenThousand
                ;;
	100000)
                echo lakh
                ;;
        *)
                echo "Enter Proper number to display units"
                ;;
esac

