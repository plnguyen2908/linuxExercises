#!/bin/bash

mkdir five

for i in $(seq 5); do
    mkdir "five/dir$i"
    for j in $(seq 4); do
	touch "five/dir$i/file$j"
	echo "$j" > "five/dir$i/file$j"
	for k in $(seq $(($j - 1))); do
	    echo "$j" >> "five/dir$i/file$j"
	done
    done
done
