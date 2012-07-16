#!/bin/bash
BRIGHT=$(cat /sys/class/backlight/acpi_video0/brightness)
if [ $BRIGHT -gt 0 ] 
then
	BRIGHT=$(($BRIGHT-1))
	echo "$BRIGHT" > /sys/class/backlight/acpi_video0/brightness
	exit
fi
