#!/usr/bin/env bash

action=$(echo -e "suspend\nlock\nlogout\nshutdown\nreboot" | wofi -d -p "system" -L 5)

if [[ "$action" == "lock" ]]; then
    swaylock -f
elif [[ "$action" == "suspend" ]]; then
    systemctl suspend
elif [[ "$action" == "logout" ]]; then
    swaymsg exit
elif [[ "$action" == "shutdown" ]]; then
    systemctl poweroff
elif [[ "$action" == "reboot" ]]; then
    systemctl reboot
fi
