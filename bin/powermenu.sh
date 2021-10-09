#!/bin/bash

rofi_command="rofi -theme powermenu"

### Options ###
power_off=""
reboot=""
lock=""
suspend="⏾"
log_out=""
cancel="ﰸ"
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out\n$cancel"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 5)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        light-locker-command -l
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $log_out)
        i3-msg exit
        ;;
    $cancel)
        ;;
esac


