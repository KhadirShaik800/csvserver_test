#!/bin/bash
RANDOM=$$
for i in `seq 10`; do
        position=$(( $i + 0 ))
    echo "$position,$RANDOM" >> inputFile
done
