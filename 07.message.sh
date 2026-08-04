#!/bin/bash


NUM=$1

if [ $NUM -gt 20 ]; then
    echo "The given $NUM is greater than 20"
else
    echo "The given $NUM is less than 20"
fi