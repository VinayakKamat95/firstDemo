#!/bin/bash -x

function myfunc() {
	echo $1
}

function func2() {
	echo hii
}
reslt1="$( func2 )"
echo $reslt1
result="$( myfunc $((RANDOM%2))  )"
if [ $result -eq 1 ]
then
	echo "success"
else
	echo "failure"
fi
