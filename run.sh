#!/bin/bash
cd ../
awk -F $'\t' '{if ($6 == "POLR2A") print $6;}' encode_awk_lessons.tsv > excercise.txt
COUNTER=1
for line in $(cat excercise.txt)
do
echo "we have $COUNTER POLR2A binding site"
COUNTER=$((COUNTER+1))
done
mv excercise.txt Bash
