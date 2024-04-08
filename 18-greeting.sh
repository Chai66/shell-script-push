#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>" #basename of $0 will give the scriot name like greeting.sh
    echo "Options::"
    echo "-n, specify the name (mandatory)"
    echo "-w, specify the wishes, ex.Good Morning"
    echo "-h, Display help and exit"

}
    


while getopts "n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; exit;; # Invalid arguments
        :) USAGE; exit;; # empty arguments
        h) USAGE; exit;; # help
    esac
done
# USAGE is a function

if [ -z "$NAME" ] || [ -z "$WISHES" ]; then
    echo "ERROR: Both -n and -w are mandatory options"
    USAGE  # After getting arror it will look for USAGE
    exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning shell script"