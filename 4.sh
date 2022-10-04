#!/bin/bash

echo "Inform x:"
read X


for i in $(seq 0 $X)
do
	if test $(expr $i % 2) -eq 0 # expr = Print the value of EXPRESSION to standard output
	then
		echo -n "$i "
	fi
	#echo $i
done
echo ""
