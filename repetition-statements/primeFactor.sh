#!/bin/bash 



flag=1
echo "Number"
read num

for ((i=1; i*i<=$num; i++))
do
	echo $i
	

		for ((j=2; j = $i; j++))
		do

        if [ $(($i%$j)) -eq 0  ]
        then

                flag=0
                break
        fi

		done
	
if [ $flag -eq 0 ]
then
    if [ $(($num%$i)) -eq 0 ]
	 then
    echo "Prime number"
	fi
else
        echo "Not Prime number"
fi


done
