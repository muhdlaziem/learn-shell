#!/bin/bash

# print first column
ls -al | awk '{print $1}'

echo "======================="

# print first and ninth column
ls -al | awk '{print $1, $9}'

echo "======================="

# print ninth column -> third column
ls -al | awk '{print $9,"->",$3}'

echo "======================="

# print column 1 > 2000
awk '$1>2000' ../datafiles/invoices.txt

echo "======================="

# print only for Cust1
< ../datafiles/invoices.txt awk '/Cust1/ {print $2,$1,$3}'

echo "======================="

# print exact for Cust1
sed -n '/\bCust1\b/p' ../datafiles/invoices.txt
