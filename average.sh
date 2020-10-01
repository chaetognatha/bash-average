#!/bin/sh
#declare counter of number of args
totalValues=0;
#declare array holding numbers
args=("$@");
#loop through all args and add them together
for (( i=0;i<$#;i++))
do
	totalValues=$((totalValues+${args[$i]}));
done
#calculate the average and print it all out
echo "scale=1; $totalValues/$#" | bc;
