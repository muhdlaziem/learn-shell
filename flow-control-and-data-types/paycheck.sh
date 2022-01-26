#!/bin/bash

clear
echo
read -p "Enter hours worked: " -r hoursworked
read -p "Enter hoursly wage: " -r hourlywage
echo

grosspay=$(echo "$hoursworked*$hourlywage" | bc)
echo "Gross pay is \$ $grosspay"