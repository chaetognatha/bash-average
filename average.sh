#!/bin/sh
totalValues=0;
args=("$@");
for (( i=0;i<$#;i++))
do
	totalValues=$((totalValues+${args[$i]}));
done
echo "scale=1; $totalValues/$#" | bc;
