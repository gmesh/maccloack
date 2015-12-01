#!/bin/bash

echo running $0

for interface in `iwconfig 2>&1 | grep 802.11 | awk '{print $1}'`; do
	ifconfig $interface | grep HWaddr
	iwconfig $interface 2>&1 | grep Bit\ Rate
done

counter=0
while [ `route | grep default | wc -l` -lt 0 ]; do
	if [ $counter -gt 9 ]; then
		exit
	fi
	let counter++
	echo waiting for route
	sleep 1
done

route
ping -c 16 -v duckduckgo.com

