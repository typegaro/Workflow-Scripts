#!/bin/bash
bookmark_dir=~/.bookmarks
choice=$(cat $bookmark_dir | dmenu -p "Bookmark:" -l 10 -i)
xdotool type "$choice"
