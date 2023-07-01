#!/opt/homebrew/bin/zsh
echo "Updating brew..."
brew upgrade;
brew update;
echo "\nCleaning up..."
brew cleanup -s;
brew doctor;
brew missing;

echo "\nUpdating zsh packages..."
cd $ZSH_CONFIG_DIR/plugins/ && for i in */.git; do ( echo ; echo $i; cd $i/..; git pull; ); done

echo "\nCleanup Finished!" | terminal-notifier -sound default
