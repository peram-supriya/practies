#!/bin/bash

NUM1=ramesh
NUM2=suresh

if [ $NUM1 == ramesh ]; then
    NUM1=raju
    exit 1
fi

if [ $NUM2 == suresh ]; then
    NUM2=ravi
    exit 1
fi

echo "Hi $NUM2 how are you"
echo "Hi $NUM1 i am fine. how are you"