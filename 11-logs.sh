#!/bin/bash


VAR_1=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE (){
    if [ $VAR_1 -ne 0 ]
    then
        echo "ERROR: $2 ... FAILED"
    else
        echo "$2 ... SUCCESS"
    fi
}

    if [ $VAR_1 -ne 0 ]
    then 
        echo "ERROR: Please run scrit with root access"
        exit 1 # you can give other than zero
    else
        echo "Installed suceessfully"
    fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y &>> $LOGFILE
VALIDATE $? "Installing GIT" 