#!/bin/bash

# d means delete without edit the
sed '/^$/d' ../datafiles/payroll.txt

echo "=============================================="

# !p means do not print
sed -n '/chavez/!p' ../datafiles/payroll.txt

echo "=============================================="

# ^ - lines that begin, s - regular expresion replacement
sed 's/^....//' ../datafiles/payroll.txt

echo "=============================================="

# 
sed '/^$/d' ../datafiles/payroll.txt > payroll2.txt

echo "=============================================="

# from line 1 to lin 1+2, print it
sed -n '1,+2p' payroll2.txt


echo "=============================================="

# from line 1,, print only the third line
sed -n '1~3p' payroll2.txt
