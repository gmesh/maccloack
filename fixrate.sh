#!/bin/bash

echo running $0

newrate="5.5M"
for interface in `iwconfig 2>&1 | grep 802.11 | awk '{print $1}'`; do
	echo fixing rate in $interface
	iwconfig $interface rate $newrate fixed
done
