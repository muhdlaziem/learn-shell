#!/bin/bash
clear
echo

#Continue after reading 6 chars
read -n 6 -p "Enter Project Code: " project_code

echo
echo "Retrieving data for project " $project_code
echo
