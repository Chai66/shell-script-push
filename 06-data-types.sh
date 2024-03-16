#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total sum is : $SUM"

echo "How many Args passed: $#"

echo "All args passed: $@"

echo "Script name : $0"