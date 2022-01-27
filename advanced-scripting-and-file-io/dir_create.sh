#!/bin/bash

ctrl_c (){

    echo
    echo "Exiting gracefully..."
    exit 1
}
trap ctrl_c 2

if [[ -d budgets ]]; then rm -rf budgets; fi

echo
read -p "Enter last 2 digits of starting budget year: " -r suffix
read -p "Enter last 2 digits of ending budget year: " -r prefix
echo
eval "mkdir -p budgets/20{${suffix:=18}..${prefix:=25}}"

{
    echo "Subject: $0 completed successfully" 
    echo "Contents of /budgets" 
    ls -l budgets 
} >> msg.txt

# sendmail muhdlaziem@gmail.com < msg.txt
sed -n '/Albany/!p' ../datafiles/cities.txt
