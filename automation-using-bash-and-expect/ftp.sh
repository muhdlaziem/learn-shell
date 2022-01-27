#!/bin/bash

clear
server="192.168.0.158"
echo
read -p "Enter FTP username: " -r ftp_username
read -p "Enter FTP password: " -r ftp_password

ftp -i -n -v $server <<EOT
user $ftp_username $ftp_password
ascii
cd /srv/ftp
lcd incoming
mget *.tar.gz
bye
EOT
