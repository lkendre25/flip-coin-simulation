#!/bin/bash
h=0
t=0
read -p "Press Enter Key to Play !! "
#for ((i=0;i< $c;i++))
while [ true ]
do
	rs=$(( 1 + RANDOM % 2 ))
	if [ $rs -eq 1 ]
	then
		sleep 1
		echo "Head"
		let h++
		if [ $h -eq 21 ];then
			echo " Head Win "
			break
		fi
	else
		sleep 1
		echo "Tail"
		let t++
		if [ $t -eq 21 ];then
			echo " Tail Win"
			break
		fi
	fi
done
echo "Head count is : $h "
echo "Tail Count is : $t "
