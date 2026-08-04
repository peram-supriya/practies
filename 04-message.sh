#!/bin/bash


START_TIME=$(date +%s)

echo "The started time is $START_TIME"

sleep 5

END_TIME=$(date +%s)

TOTALTIME=$(($END_TIME - $START_TIME))

echo "The ended time is $TOTALTIME"