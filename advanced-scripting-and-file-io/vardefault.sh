#!/bin/bash

# throw error for undefined vars
set -u 

clear
read -n 6 -p "Enter cost center code: " -r cc_code
echo
echo "Cost center code is: ${cc_code:=hfx123}"
echo
echo "This is the last line. $non_existent_variable"
echo
