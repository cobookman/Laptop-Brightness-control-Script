#!/bin/bash
BRIGHT=$(cat /sys/class/backlight/acpi_video0/brightness)
if [ $BRIGHT -lt 24 ] 
then
	BRIGHT=$(($BRIGHT+1))
	echo "$BRIGHT" > /sys/class/backlight/acpi_video0/brightness
	exit
fi
