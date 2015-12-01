#!/bin/bash

echo running $0

if [ -z "(service wpa_supplicant status | grep running)" ]; then
	echo without wpa_supplicant
	wpadown=no
else
	echo wpa_supplicant service detected. stopping network-manager too
	service network-manager stop
	service wpa_supplicant stop
	wpadown=yes
fi

for interface in `iwconfig 2>&1 | grep 802.11 | awk '{print $1}'`; do
	echo cloaking $interface
	ifconfig $interface down && macchanger -A $interface && ifconfig $interface up
done

if [ "$wpadown" == "yes" ]; then
	service wpa_supplicant start
	service network-manager start
fi

