#!/bin/bash

# show the results of each read
grep -H MB ~/results/* | awk ' { $8=$8*8; print $1" " $8 " Mbps" }'

# get the sum
grep -H MB ~/results/* | awk '{s+=$8*8} END {print "Total: " s " Mbps" }'
