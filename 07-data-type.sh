#!/bin/bash

NUM1=10
NUM2=30

SUM=$(($NUM1+$NUM2))

echo "Sum is : $SUM"

# Array
MOVIES=("RRR" "Varanasi" "Pushpa") # index always starts from 0
echo "Movie are: ${MOVIES[@]}"
echo "First movie is: ${MOVIES[0]}"
echo "First movie is: ${MOVIES[1]}"
echo "First movie is: ${MOVIES[2]}"


