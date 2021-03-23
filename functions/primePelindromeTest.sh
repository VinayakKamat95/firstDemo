#!/bin/bash 


function prime( )
{

num=$1
flag=0
for ((i=2; i<=$(($num/2)); i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
   	flag=1
    	break
	fi
done

if [ $flag -eq 0 ]
then
	echo number $num is prime
else
	echo number $num is not prime
fi

}


function palindrome ( )
{

temp=$1
reverse=""
while [ $temp -ne 0 ]
do
    reverse=$reverse$(($temp%10))
    temp=$(($temp/10))
done
echo "Reverse of $1 is $reverse"

}

echo Number please
read num
echo "------------------"
echo $(prime $num)
echo "------------------"
echo $(palindrome $num)
echo "------------------"
echo $(prime ${$(palindrome $num)} )
