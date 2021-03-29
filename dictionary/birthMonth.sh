#!/bin/bash -

declare -A Dict
declare -A sameMonth

for ((i=1; i<=50; i++))
do
	month=$((RANDOM%12+1))
#	echo $month

	Dict[$i]=$month
done

echo ${Dict[@]}


i=1
while [ $i -le ${#Dict[@]} ]
do
case ${Dict[$i]} in

1)((sameMonth[${Dict[$i]}]+=1))
;;
2)((sameMonth[${Dict[$i]}]+=1))
;;
3)((sameMonth[${Dict[$i]}]+=1))
;;
4)((sameMonth[${Dict[$i]}]+=1))
;;
5)((sameMonth[${Dict[$i]}]+=1))
;;
6)((sameMonth[${Dict[$i]}]+=1))
;;
7)((sameMonth[${Dict[$i]}]+=1))
;;
8)((sameMonth[${Dict[$i]}]+=1))
;;
9)((sameMonth[${Dict[$i]}]+=1))
;;
10)((sameMonth[${Dict[$i]}]+=1))
;;
11)((sameMonth[${Dict[$i]}]+=1))
;;
12)((sameMonth[${Dict[$i]}]+=1))
;;
esac
((i+=1))
done
echo ${!sameMonth[@]} "::" ${sameMonth[@]}
