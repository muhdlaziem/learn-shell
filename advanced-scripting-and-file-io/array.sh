#!/bin/bash

# -t is trailing delimiter, -d is delimiter
mapfile -t cityarray < ../datafiles/cities.txt
echo "${cityarray[*]}"
mapfile -td "," salanity_array < ../datafiles/salanity_readings.txt
echo "${salanity_array[*]}"
echo "${salanity_array[3]}"
