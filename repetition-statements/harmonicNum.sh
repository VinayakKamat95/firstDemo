#!/bin/bash 


echo "Enter N for Nth harmonic number"
read n


har=1
for ((i=1; i<=n; i++))
do

	har=1/$i
	printf $har+

done

