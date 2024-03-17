#!/bin/bash

VAR_1=$(id -u)
#TIMESTAMP=(date %+F)

    if [ $VAR_1 -ne 0 ]
    then 
        echo -e "$R ERROR: Please run scrit with root access $N"
        exit 1 # you can give other than zero
    else
        echo -e " $G You Are a root user  $N"
    fi

    echo "All Args passed: $@"