#!/bin/bash

VAR_1=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ... $R FAILED $N"
    else 
        echo -e "$2 ... $G SUCCESS $N"
    fi
}


    if [ $VAR_1 -ne 0 ]
    then 
        echo -e "$R ERROR: Please run scrit with root access $N"
        exit 1 # you can give other than zero
    else
        echo -e " $G You Are a root user  $N"
    fi

    #echo "All Args passed: $@"
# git mysql postfix net-tools

for package in $@ # package =git for first time
do 
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE  # install the package
        VALIDATE $? "Installation of $package" # validate 
        else
        echo -e "$package is already Installed ... $Y SKIPPING $N"
        fi
done
    

    