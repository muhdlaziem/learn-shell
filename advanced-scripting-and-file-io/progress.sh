#!/bin/bash

clear
echo "Reading file contents..."
echo
numlines=$(wc -l < ../datafiles/cities.txt)
num_of_indicators=$((100/"$numlines"))

start_time=$(date +%s)
file_to_read=../datafiles/cities.txt

printf '['
while read -r line_from_file; do
    sleep .5
    printf '=%.0s' {$num_of_indicators}
done < $file_to_read
echo '] 100%'
echo
end_time=$(date +%s)
elapsed_time=$(("$end_time"-"$start_time"))
echo
echo "Operation completed in $elapsed_time seconds"
echo
