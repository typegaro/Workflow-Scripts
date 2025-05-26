#!/bin/bash

mounted=$(mount | grep "on /mnt/" | awk '{print $3}')

[ -z "$mounted" ] && notify-send "No partition in /mnt" && exit

chosen=$(echo "$mounted" | dmenu -i -p "Umont:")

[ -z "$chosen" ] && exit

sudo umount "$chosen"

if mount | grep -q "$chosen"; then
    notify-send "Errore: $chosen not unmounted"
else
    notify-send "unmounted: $chosen"
fi
