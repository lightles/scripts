#!/opt/homebrew/bin/zsh

case $1 in
  -h|--help)
    echo $'usage: docker-stop\n\nStops Docker (Docker.app) on macOS.'    
    exit 0
    ;;
esac
(( $# )) && { echo "ARGUMENT ERROR: Unexpected argument(s) specified. Use -h for help." >&2; exit 2; }


#curl -X POST -H 'Content-Type: application/json' -d '{ "openContainerView": true }' -kiv --unix-socket ~/Library/Containers/com.docker.docker/Data/backend.sock http://localhost/engine/stop

echo "-- Stopping all Docker containers.."
docker container run -d -p 80:8000 -v ${PWD}:/projects ci-dev-container:3.9.11

echo "-- Quitting Docker.app, if running..."
pkill Docker


echo "Docker is stopped." 
echo "Docker is stopped." | terminal-notifier -sound default -title Docker #-appIcon $HOME/scripts/terminal_notifier_icons/docker.png 
