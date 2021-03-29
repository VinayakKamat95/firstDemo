#!/bin/bash -x



array=(1 -1 0 1 2 0 -2)
n=${#array[@]}



for ((i=0; i<=$(($n-3)); i++ ))
do

	for ((j=$(($i+1)); j<=$(($n-2)); j++))
	do

		for((k=$(($j+1));k<=$(($n-1)); k++))
		do
			if [ $((${array[$i]}+${array[$j]}+${array[$k]})) -eq 0 ]
			then
             echo "${array[$i]},${array[$j]},${array[$k]}"
			fi
		done
	done
done
