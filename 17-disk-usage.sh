#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""
# Trying to achieve if disk space is above 1% we should be alerted

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1) # awk print will give column fro the result, cut -d will erase the percentage from the result
    partition=$(echo $line | awk '{print $1F}') # 1F is to extract partition of disk which includes ebs vol
    if [ if $usage -gt $DISK_THRESHOLD ]
    then
        message+="High disk usage on $partition: $usage\n" # += is not override next rows instaed append the lines
    fi

done <<< $DISK_USAGE

echo "Message: $message"