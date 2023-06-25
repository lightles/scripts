# vim: set ft=zsh:
#!/opt/homebrew/bin/zsh

session_name="${1:-Workspace0}"

tmux -f ~/.config/tmux/config new-session -d -s $session_name
tmux send-keys -t $session_name "neofetch" Enter
tmux attach -t $session_name
