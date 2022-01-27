#!/bin/bash

clear

ABSOLUTE_PATH_INPUT=$(realpath inputdir)
ABSOLUTE_PATH=$(realpath .)

echo "$ABSOLUTE_PATH_INPUT"
echo "$ABSOLUTE_PATH"
for i in "$ABSOLUTE_PATH_INPUT"/*; do

    # remove the prefix dir path and trailer .tar.gz file extension
    just_file_name=${i//$ABSOLUTE_PATH_INPUT\/sat_data_/}
    
    new_dir_name=${just_file_name//.tar.gz/}
    echo "$new_dir_name"

    #make a dir, copy archive and extract it in new location
    mkdir -p "$ABSOLUTE_PATH"/processeddir/"$new_dir_name"
    cp "$i" "$ABSOLUTE_PATH"/processeddir/"$new_dir_name"/"$just_file_name"

    cd "$ABSOLUTE_PATH"/processeddir/"$new_dir_name" || exit
    tar -xvf "$just_file_name"

done
