#!/bin/bash
config_dir=~/.scripts/config
choice=$(cat $config_dir | dmenu -p "Config:" -l 10 -i)
alacritty -e nvim "$choice"
