#!/bin/bash

filetoread=../datafiles/cities.txt

while read -r linefromfile; do
    if test -d ./locations/"$linefromfile"; then
        echo "Skipping $linefromfile, directory already exists"
        continue
    fi
    
    mkdir -p ./locations/"$linefromfile"
    
done < $filetoread
