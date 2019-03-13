#!/bin/bash
brew update;
brew upgrade;
brew bundle --force dump --file=~/.cache/brew/BrewBundleFile
brew bundle --force cleanup --file=~/.cache/brew/BrewBundleFile;
brew cleanup -s;
brew doctor;
brew missing;
echo "Cleanup Finished!" | terminal-notifier -sound default
