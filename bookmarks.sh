#!/bin/bash
bookmark_dir=~/.scripts/bookmarks
choice=$(cat $bookmark_dir | dmenu -p "Bookmark:" -l 10 -i)
if [ -z "$choice" ]; then
    exit 0
fi
xdotool type "$choice"
