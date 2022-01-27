#!/bin/bash

clear
choice="0"

ctrl_c() {
    clear
    echo "Cleaning up temp files..."
    for i in /tmp/*; do
        if [[ ! -d $i ]]; then
            rm "$i"
        fi
    done
    exit 1
}

trap ctrl_c 2

while (("$choice" != "1")); do
    clear
    echo
    echo "Please select an option"
    echo
    echo "1 -Exit"
    echo
    read -p ">> " -r choice 
done