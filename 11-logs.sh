#!/bin/bash


VAR_1=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE (){
    if [ $VAR_1 -ne 0 ]
    then
        echo "ERROR: $2 ... $R FAILED $N"
    else
        echo "$2 ... $G SUCCESS $N"
    fi
}

    if [ $VAR_1 -ne 0 ]
    then 
        echo "$R ERROR: Please run scrit with root access $N"
        exit 1 # you can give other than zero
    else
        echo " $G Installed suceessfully $N"
    fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y &>> $LOGFILE
VALIDATE $? "Installing GIT" 