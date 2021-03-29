#!/bin/bash 


declare -A die
declare -A dieCount

i=0
while [ 1 ]
do

i=$i+1

die[$i]=$((RANDOM%6+1))
#echo ${die[@]}

case ${die[$i]} in
	1)

	((dieCount[${die[$i]}]+=1))
	if [ ${dieCount[${die[$i]}]} -eq 10 ]
	then
	break
	fi
	;;
	2)

   ((dieCount[${die[$i]}]+=1))
   if [ ${dieCount[${die[$i]}]} -eq 10 ]
   then
   break
   fi
	;;
	3)

   ((dieCount[${die[$i]}]+=1))
	if [ ${dieCount[${die[$i]}]} -eq 10 ]
   then
   break
   fi
	;;
	4)

   ((dieCount[${die[$i]}]+=1))
   if [ ${dieCount[${die[$i]}]} -eq 10 ]
   then
   break
   fi
	;;
	5)

	((dieCount[${die[$i]}]+=1))
   if [ ${dieCount[${die[$i]}]} -eq 10 ]
   then
   break
   fi
	;;
	6)

   ((dieCount[${die[$i]}]+=1))
   if [ ${dieCount[${die[$i]}]} -eq 10 ]
   then
   break
   fi
	;;
esac

done
echo ${die[@]}
echo ${!dieCount[@]} :: ${dieCount[@]}

max=${dieCount[1]}
min=${dieCount[1]}

for ((i=2; i<=${#dieCount[@]}; i++))
do
	if [ ${dieCount[$i]} -gt $max ]
then
        max=${dieCount[$i]}
elif [ ${dieCount[$i]} -lt $min ]
then
        min=${dieCount[$i]}
else
   echo ''
fi
done
echo $max
echo $min
