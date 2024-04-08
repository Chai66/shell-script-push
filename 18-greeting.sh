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
        h|*) USAGE; exit;; 
    esac
done
# USAGE is a function