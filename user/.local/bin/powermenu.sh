#!/bin/bash

# credits to chimeralinux for the original version of the script!
# https://git.sr.ht/~justinesmithies/chimeralinux-dotfiles/

#### Options ###
power_off=" Shutdown"
reboot="󰜉 Reboot"
lock_screen=" Lock Screen"
suspend=" Suspend"
log_out="󰍃﫼 Log Out"

# Options passed to fuzzel
options="$power_off\n$reboot\n$suspend\n$log_out\n$lock_screen"
lines="$(echo "$options" | grep -oF '\n' | wc -l)"
rofi_command="fuzzel -d -w 14 -l $((lines+1))"
chosen="$(echo -e "$options" | $rofi_command )"
case $chosen in
    "$lock_screen")
	swaylock
        ;;    
    "$power_off")
        shutdown now
        ;;
    "$reboot")
        systemctl reboot
        ;;
    "$suspend")
        systemctl sleep
        ;;
    "$log_out")
        swaymsg exit
        ;;
esac
