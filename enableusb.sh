#!/bin/bash

status=$(./usbstatus.sh)

if [ "$status" == "1" ] ; then # light is already on
	exit
fi

timenow=$(date "+%y%m%d-%H:%M:%S")
sudo uhubctl -l 1-1 -a on -p 2 > /dev/null

echo "[$timenow] On" >> ./lightlog.txt

echo "$(date "+On-%H:%M:%S")" | tee ./light-changetime.txt ./web/light-changetime.txt
