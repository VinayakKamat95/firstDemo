#!/bin/bash -x


function palindrome ()
{
if [ $1 -eq $2 ]
then
	echo $1 and $2 Numbers are palindrome
else
	echo $1 and $2 Numbers are NOT palindrome
fi
}

a=121
b=121
echo $(palindrome $a $b )

