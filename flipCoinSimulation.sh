#!/bin/bash
h=0
t=0
read -p "Enter the number how much time you want to flip coin" c
for ((i=0;i< $c;i++))
do
	rs=$(( 1 + RANDOM % 2 ))
	if [ $rs -eq 1 ]
	then
		echo "Head"
		let h++
	else
		echo "Tail"
		let t++
	fi
done
echo "Head count is : $h "
echo "Tail Count is : $t "
