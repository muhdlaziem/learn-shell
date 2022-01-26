#!/bin/bash

clear

echo "Expense allocation"
echo
read -p "Enter your city: " -r city

case "$city" in
    "halifax")
        cost_center="East";;
    "toronto" | "montreal")
        cost_center="Central";;
    "vancouver")
        cost_center="West";;
    *)
        clear;echo "Invalid city $city";exit;;
esac
clear
echo "Cost center fot $city has been set to $cost_center"
