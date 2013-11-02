#!/bin/bash
echo 3 > /proc/sys/vm/drop_caches
BLK=4k
for disk in `seq 1 6`;
do
    for file in `seq 1 4`;
    do
        DDCOMMAND="dd if=/storage/ssd/data$disk/49-zero/f$file  of=/dev/null &> /home/rootig/results/d$disk-f$file bs=$BLK &"
        echo $DDCOMMAND
        eval $DDCOMMAND
    done
done
