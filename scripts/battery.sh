#!/bin/bash

while [ 1=1 ]
do
	STATUS=`cat /sys/class/power_supply/BAT1/status`
	if [ "$STATUS" == "Discharging" ]; then
		AVG=`cat /sys/class/power_supply/BAT1/capacity`
		
		if [ $AVG == 15 ]; then
		   notify-send -a "Energia" "Bateria Fraca" -u critical
		fi
		if [ $AVG -le 90 ]; then
		   systemctl suspend
		   exit;
		fi
	fi
done
