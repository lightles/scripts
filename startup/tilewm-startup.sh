#!/bin/bash
ps auxw | grep chunkwm | grep -v grep > /dev/null

if [ $? != 0 ]
then
       /usr/local/bin/chunkwm -c ~/.config/tilewm/chunkwm/config &
fi

ps auxw | grep skhd | grep -v grep > /dev/null

if [ $? != 0 ]
then
       /usr/local/bin/skhd -c ~/.config/tilewm/skhd/config &
fi
