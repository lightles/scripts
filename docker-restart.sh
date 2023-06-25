#!/opt/homebrew/bin/zsh

case $1 in
  -h|--help)
    echo $'usage: docker-restart\n\nRestart Docker (Docker.app) on macOS.'    
    exit 0
    ;;
esac
(( $# )) && { echo "ARGUMENT ERROR: Unexpected argument(s) specified. Use -h for help." >&2; exit 2; }


curl -X POST -H 'Content-Type: application/json' -d '{ "openContainerView": false }' -kiv --unix-socket ~/Library/Containers/com.docker.docker/Data/backend.sock http://localhost/engine/restart


echo "Docker is restarted." 
echo "Docker is restarted." | terminal-notifier -sound default -title Docker #-appIcon $HOME/scripts/terminal_notifier_icons/docker.png 
