#!/bin/bash

NUM1=ramesh
NUM2=suresh

if [ $NUM1 == ramesh ]; then
    NUM1=raju

fi

if [ $NUM2 == suresh ]; then
    NUM2=ravi

fi

echo "Hi $NUM2 how are you"
echo "Hi $NUM1 i am fine. how do you do"