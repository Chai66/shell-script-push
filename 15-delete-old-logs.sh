#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR="/tmp/shellscripts-logs"

if [ ! -d $SOURCE_DIR ]  # ! denotes opposite and -d denotes directory exists or not
then 
    echo -e "$R source directory : $SOURCE_DIR does not exist. $N"
fi


FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line #IFS=Internal field separator
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE
