#!/bin/bash -


for ((i=0;i<10;i++))
do
num=$((RANDOM%899+100))
numberArray[$i]=$num
done

echo ${numberArray[@]}



#min=${numberArray[0]}
max=${numberArray[0]}

for (( i=1; i < ${#numberArray[@]}; i++ ))
do

   if [ ${numberArray[$i]} -gt $max ]
   then
         max=${numberArray[$i]}
#  elif [ ${numberArray[$i]} -lt $min ]
#  then
#         min=${numberArray[$i]}
   else
         echo " "
   fi

done
#echo $max


for ((i=0; i<${#numberArray[@]}; i++ ))
do

   sub=$(( $max-${numberArray[$i]} ))

   subArray[$i]=$sub

done


min=${subArray[0]}
i=1
while [ $i -lt ${#subArray[@]} ]
do

	if [ $min -eq 0 ]
	then
		((++i))
	fi

	if [[ ${subArray[$i]} -lt $min && $min -gt 0 && ${subArray[$i]} -gt 0 ]]
   then
         min=${subArray[$i]}
   fi
((i++))

done

secondLargeNum=$(($max-$min))

echo $secondLargeNum


