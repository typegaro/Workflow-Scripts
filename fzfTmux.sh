cd $HOME/Work/
path=$(fzf)
name=$(echo $path | cut -d'/' -f1)
if tmux has-session -t $name 2>/dev/null; then
    tmux new-window -t "$name" 
    tmux send-keys "nvim $HOME/Work/${path}" C-m
    tmux a -t $name
else
    tmux new -s "$name" -c "$name" -d 
    tmux send-keys "nvim $HOME/Work/${path}" C-m
    tmux a -t $name
fi 

