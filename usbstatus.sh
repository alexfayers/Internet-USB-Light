#!/bin/bash

if sudo uhubctl | grep -q 0000; then
	echo '0'
else
	echo '1'
fi
