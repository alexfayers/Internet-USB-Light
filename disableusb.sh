#!/bin/bash

status=$(./usbstatus.sh)

if [ "$status" == "0" ] ; then # light already off
	exit
fi

timenow=$(date "+%y%m%d-%H:%M:%S")
sudo uhubctl -l 1-1 -a off -p 2 > /dev/null

echo "[$timenow] Off" >> lightlog.txt

echo "$(date "+Off-%H:%M:%S")" | tee ./light-changetime.txt ./web/light-changetime.txt
