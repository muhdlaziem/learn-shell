#!/bin/bash

choice="0"

while (("$choice" != "1")); do
    clear
    echo
    echo "Please select an option"
    echo
    echo "1 -Exit"
    echo
    read -p ">> " -r choice 
done