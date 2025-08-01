search_dirs=(~/Prj ~/Work ~/Work/backend ~/Amber)
dirs=( $(find "${search_dirs[@]}" -maxdepth 1 -type d) )
path=$(printf "%s\n" "${dirs[@]}" | dmenu -l 10 -i)
base=$(basename "$path")

tmux new-session -c "$path" -s "$base" -d
tmux send-keys -t "$base" "nvim \"$path\"" C-m

notify-send "tmux session started" "Session: $base"
if [ $(tmux ls 2>/dev/null | wc -l) -eq 1 ]; then
  $TERMINAL -e tmux attach -t "$base" &
fi

