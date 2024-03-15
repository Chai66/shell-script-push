#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$($NUMBER1+$NUMBER2)
SUM=`echo "$NUMBER1 + $NUMBER2" | bc`
echo "Total sum is : $SUM"
SUM='echo "$NUMBER1+$NUMBER2" 