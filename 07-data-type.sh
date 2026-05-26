#!/bin/bash

NUM1=10
NUM2=30

SUM=$(($NUM1+$NUM2))

echo "Sum is : $SUM"

#Array
MOVIES=("RRR" "Varanasi" "Pushpa")# index always starts from 0
echo "Movie are: ${MOVIES[@]}"
 