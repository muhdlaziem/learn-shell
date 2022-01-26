#!/bin/bash

function user_input() {
    # if [[ -n "$1" ]]; then
    #     echo "COST CENTER:" $1
    #     costcenter=$1
    # else
    #     echo "\$1 is missing."
    # fi
    read -p "Pleas enter cost center: " costcenter
}
