#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi


find five -type f -size +3c | { while read file; do rm -f $file; done; }
