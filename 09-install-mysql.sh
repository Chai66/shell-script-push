#!/bin/bash

VAR_1=$(id -u)

if [ $VAR_1 -ne 0 ]
then 
    echo "ERROR: Please run scrit with root access"
else
    echo "Installed suceessfully"
fi
