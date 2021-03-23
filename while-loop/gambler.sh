#!/bin/bash 

betCount=0
winCount=0
start=10
while [[ ( $start -le 20 || $start -ne 20 ) && ( $start -ge 0 || $start -ne 0) ]]
do
bin=$((RANDOM%2))
#read bin
((betCount+=1))
if [ $bin -eq 1 ]
then
#	bet="won"
	((start+=1))
	((winCount+=1))
#	if [ $start -eq 20 ]
#	then
#		break
#	fi
else [ $bin -eq 0 ]
#	bet="loss"
	((start-=1))
#	if [ $start -eq 0 ]
#	then
#		break
#	fi


echo $start
fi
#echo $start



done
#echo $betCount
#echo $winCount
