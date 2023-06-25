#!/bin/bash
brew update;
brew upgrade;
brew cleanup -s;
brew doctor;
brew missing;
echo "Cleanup Finished!" | terminal-notifier -sound default
