#!/bin/bash

initdir=`echo $0 | sed 's/init.sh//g'`
if [ "$(id -u)" -eq 0 ]; then
	echo "running $0"
	$initdir/changemac.sh
	$initdir/fixrate.sh
	$initdir/interprobe.sh
else
	echo "aborting. r u r00t?"
fi


