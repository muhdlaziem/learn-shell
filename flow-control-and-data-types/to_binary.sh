#!/bin/bash

clear
echo
read -p "Enter ipv4 address: " -r ip_address

full_bin_val=""

for ((i=1; i<5; ++i)); do
    octet[$i]=$(echo "$ip_address" | cut -f"$i" -d ".")
    current_bin_val=$(bc <<< "obase=2;${octet[$i]}")
    full_bin_val="$full_bin_val $current_bin_val"
done
echo "${octet[*]}" "$full_bin_val"
