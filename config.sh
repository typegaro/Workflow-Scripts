#!/bin/bash
config_dir=~/.scripts/config
choice=$(cat $config_dir | dmenu -p "Config:" -l 10 -i)
if [ -z "$choice" ]; then
    exit 0
fi
alacritty -e nvim "$choice"
