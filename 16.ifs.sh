#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

FILE="/etc/passwd"

if [ ! -f $FILE ]  # ! denotes opposite and -f denotes directory exists or not
then 
    echo -e "$R source directory : $FILE does not exist. $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_die shell_path
do
    echo "username: $username"
    echo "password: $password"
    echo "user Full name: $user_fullname"
done < $FILE