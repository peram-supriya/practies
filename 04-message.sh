#!/bin/bash


START_TIME=$(date +%s)

echo "The started time is $START_TIME"

sleep 5

END_TIME=$(date +%s)

TOTAL_TIME=(($END_TIME-$START_TIME))

echo "The ended time is $TOTAL_TIME"