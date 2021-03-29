#!/bin/bash 

for ((i=0;i<=3;i++))
do
num=$((RANDOM%899+100))
numberArray[$i]=$num
done

echo ${numberArray[@]}


temp=0
for ((i=0; i<${#numberArray[@]}; i++))
do
	for ((j=$(($i+1)); j<${#numberArray[@]}; j++))
	do
		if [ ${numberArray[$i]} -gt ${numberArray[$j]} ]
		then
			temp=${numberArray[$i]}
			numberArray[$i]=${numberArray[$j]}
			numberArray[$j]=$temp
		fi
	done
done
echo ${numberArray[$((${#numberArray[@]}-2))]}
echo ${numberArray[@]}

temp1=0
for ((i=0; i<${#numberArray[@]}; i++))
do
   for ((j=$(($i+1)); j<${#numberArray[@]}; j++))
   do
      if [ ${numberArray[$i]} -lt ${numberArray[$j]} ]
      then
         temp1=${numberArray[$i]}
         numberArray[$i]=${numberArray[$j]}
         numberArray[$j]=$temp1
      fi
   done
done

echo ${numberArray[$((${#numberArray[@]}-2))]}
echo ${numberArray[@]}
