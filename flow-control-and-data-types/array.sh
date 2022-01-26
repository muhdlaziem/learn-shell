#!/bin/bash

depts=("it" "hr" "sales")
echo "$depts"
echo "${depts[*]}"
echo "${depts[0]}"

depts[3]="exec"
echo "${depts[3]}"

echo ${#depts[*]}

# :skip how many indices : how many indices to take after
echo "${depts[*]:1:3}"

# replace "sales" to "marketing"
echo
echo "${depts[*]/sales/marketing}"
echo "${depts[*]}"
depts2="${depts[*]/sales/marketing}"
echo "${depts2[*]}"

# sort using string
# echo
# sort <<<"${depts[*]}"


