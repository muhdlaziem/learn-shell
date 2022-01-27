#!/bin/bash

clear
echo
echo "Budget directory creator"
echo
read -p "Enter last 2 digits of STARTING budget year: " -r start
read -p "Enter last 2 digits of ENDING budget year: " -r end
echo
eval "mkdir -p budgets/20{$start..$end}"
clear
echo "Directories that exist under /budgets"
echo
ls budgets
