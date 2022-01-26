#!/bin/bash
clear
totalsize=0
currentsize=0
for currentfile in ../datafiles/*.txt
do
    echo "$currentfile"
    currentsize=$(ls -l "$currentfile" | tr -s " " | cut -f5 -d " ")
    # totalSize=$(("$totalSize" + "$currentSize"))
    # echo $(("$totalSize" + "$currentSize"))
    totalsize=$(("$totalsize"+"$currentsize"))
    echo "$currentsize" 
done
echo "Total space used by TXT files is "$totalsize

cities=("hfx" "tor" "ironman")
echo "${cities[1]}"

for ((i=0; i<${#cities[@]}; ++i)); do
    echo "${cities[$i]}"
done
