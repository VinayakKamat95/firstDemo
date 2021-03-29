#!/bin/bash -x

headCount=0
tailCount=0
count=0
while [ $count -ne 10  ]
do
bin=$((RANDOM%2))

if [ $bin -eq 1 ]
then
	coin="heads"
	headCount=$(($headCount+1))
else
	coin="tails"
	tailCount=$(($tailCount+1))
fi

((count++))

done

echo "Head wins : $headCount times"

echo "Tail wins : $tailCount times"
