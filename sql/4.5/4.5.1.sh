#!/bin/bash  

HOSTNAME=`hostname`
NUM=0
i=0

while ((2 != 1))  
do   
	for (( j=${NUM};j <= 10 ;j++ ))
 	do	
		vsql -U user1 -w vertica -e -f ./4.5.sql &
		let "i += 1"
		echo $i
	done	
	
	sleep 3
	
	NUM=`ps -ef|grep "/4.5.sql"|grep -i vsql | grep -v grep |wc -l`
	
done
