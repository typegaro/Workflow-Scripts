cd $HOME/Documents/
path=$(fzf)
#exec nohup zathura $path >/dev/null 2>&1 
exec setsid zathura $path >/dev/null 2>&1 
