#!/bin/bash

VAR_1=$(id -u)

    if [ $VAR_1 -ne 0 ]
    then 
        echo "ERROR: Please run scrit with root access"
    else
        echo "Installed suceessfully"
    fi

yum install mysql -y
VAR_1=$(id -u)

    if [ $VAR_1 -ne 0 ]
    then 
        echo "ERROR: Installing mysql failed"
    else
        echo "Installing MySQl Success"
    fi

    yum install git -y
VAR_1=$(id -u)

    if [ $VAR_1 -ne 0 ]
    then 
        echo "ERROR: Installing GIT failed"
    else
        echo "Installing GIT Success"
    fi