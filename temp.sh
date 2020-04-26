#!/bin/bash
kk=`cat /sys/class/thermal/thermal_zone*/temp`
for i in $kk 
do
	num=$(( $num + 1 ))
	while [ $num == 2 ]
		do
		echo $i
	done
done
