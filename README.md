==First find out what the display is called:==
ls /sys/class/backlight/

If you have multiple displays you might see multiple devices listed. Please record down the display name (EX: acpi_video0)

==The second step is to find the max brightness:==
sudo cat /sys/class/backlight/<display name here>/max_brightness<br />
here is the command with the example device name:
sudo cat /sys/class/backlight/acpi_video0/max_brightness

==Now edit the upBrightness.sh if statment:
 if[ $BRIGHT -lt <MAX BRIGHTNESS HERE> ]

so if your max brightness was 24,

if[ $BRIGHT -lt 24 ]

==Finally edit lines 2 and 6 to point to your video device
aka lines: BRIGHT=$(cat /sys/class/backlight/<display name here>/brightness
echo "$bright" > /sys/class/backlight/<display name here>/brightness
