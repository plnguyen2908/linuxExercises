#!/bin/bash

function checkNumber {
    local num=$1
    local ok=1
    while [[ $num -gt 0 ]]; do
	digit=$(($num % 10))
	if [[ $digit > 1 ]]; then
	    ok=0;
	    break
	fi
	num=$(($num/10))
    done
    if [[ $ok -eq 1 ]]; then
	echo "true"
    else
	echo "false"
    fi
}

x=1000
sum=0
while [[ $x -le 2000 ]]; do
    ok=$(checkNumber $x)
    if [[ $ok == "true" ]]; then
	sum=$(($sum + $x))
    fi
    x=$(($x+1))
done

echo "sum=$sum"

