#!/bin/bash -x


count=0
while [ $count -ne 11  ]
do
bin=$((RANDOM%2))

if [ $bin -eq 1 ]
then
	coin="heads"
else
	coin="tails"
fi

echo $coin
((count++))

done
