dirs=( $(find ~/Prj -maxdepth 1 -type d) )
path=$(printf "%s\n" "${dirs[@]}" | dmenu)
base=$(basename "$path")

tmux new-session -c "$path" -s "$base" -d
tmux send-keys -t "$base" "nvim \"$path\"" C-m
tmux attach-session -t "$base"

