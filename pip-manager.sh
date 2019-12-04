#!/bin/bash
reqfile='./req.txt'
#reqfile='$HOME/dev.d/python-manager/site-packages-req.txt'

touch $reqfile
for i in $*; do 
    countof=$(grep $i -c $reqfile)
    if [ "$countof" -eq "0" ]; then
        echo $i >> $reqfile
    else
        echo "$i is already defined as a top level pip module"
    fi
done
