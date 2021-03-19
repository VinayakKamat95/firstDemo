#!/bin/bash -x

for fileName in $(ls)
do
   ext=${fileName##*\.}
   case "$ext" in
	java)
		echo "$fileName: java source file"
		;;
	sh)
		echo "$fileName: Shell script file"
		;;
	 o)
                echo "$fileName: object file"
                ;;
 	txt)
                echo "$fileName: text file"
                ;;
	 *)
                echo "$fileName: not processed"
                ;;
   esac
done
