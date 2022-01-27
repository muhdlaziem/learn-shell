#!/bin/bash

read -p "Enter source directory to backup: " -r backup_dir
tar -zvcf backup_2022-01-27.tar.gz "$backup_dir"
#Backed up location: budgets
