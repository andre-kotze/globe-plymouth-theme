#!/usr/bin/env bash

# check permissions
if [ "$EUID" -ne 0 ]; then
	echo -e "This script needs to run as root user, please use \"sudo ./show-splash.sh\" instead";
	exit 1;
fi



# starting plymouth deamon to show splashscreen
echo -n "starting plymouthd   ..........................................   ";
plymouthd --debug --debug-file=/home/andre/plymouthd-debug-out.log;
if [ $? -gt 0 ]; then
	echo -e "\nan error occured while starting plymouthd" ;
	echo "quitting plymouthd..."
	plymouth --quit ;
	if [ $? -gt 0 ]; then
		echo "an error occured stopping plymouthd" ;
		echo "plymouthd might be still running in background"
		exit 1;
	fi
	exit 1;
fi
echo "[done]" ;



echo -n "showing currently selected splash screen theme   ...............   ";
plymouth show-splash --debug --debug-file=/home/andre/plymouth-debug-out.log;
sleep 15;
echo "[done]" ;



echo -n "quitting plymouthd   ...........................................   ";
plymouth --quit ;
if [ $? -gt 0 ]; then
	echo -e "\nan error occured stopping plymouthd, retrying" ;
	n=0 ;
	while [ $? -gt 0 -a $n -le 20 ]; do
		plymouth --quit ;
		n=$(( n+1 )) ;
	done
fi
echo "[done]" ;



exit 0;
