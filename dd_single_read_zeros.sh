#!/bin/bash
echo 3 > /proc/sys/vm/drop_caches
BLK=4k
dd if=/storage/ssd/data1/49-zero/f1  of=/dev/null bs=$BLK


