

#!/bin/bash -x

min=`date -d 'March 20' "+%m"`
max=`date -d 'June 20' "+%m"`
day=20
echo day
read d
echo month
read m


if [[ $m -le $max && $m -ge $min ]]
then 
	
	if ([[($m -eq $min) && ($d -ge $day)]] || [[($m -eq $max) && ($d -le $day)]])
	then 
		echo true
	else 
		echo false
	fi
else 
	echo false
fi
