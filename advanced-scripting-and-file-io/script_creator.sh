#!/bin/bash

clear
echo

read -p "Enter new script filename without path or .sh: > " -r new_script

new_script="$(pwd)/$new_script.sh"
echo "$new_script"
printf "#!/bin/bash\n\n" >> "$new_script"
echo "read -p \"Enter source directory to backup: \" -r backup_dir" >> "$new_script"

date_portion=$(date +%Y-%m-%d)

echo "tar -zvcf backup_$date_portion.tar.gz \"\$backup_dir\"" >> "$new_script"

chmod +x "$new_script"

source "$new_script"
echo "Script $new_script executed successfully"
echo "#Backed up location: $backup_dir" >> "$new_script"
echo "Backed up location: $backup_dir"
echo
