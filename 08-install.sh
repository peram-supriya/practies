#!/bin/bash

USERID=$(id -u)

if [ $USERID == 0 ]; then
    echo "Running as root user"
    exit 1


fi

echo "installing nginx"
dnf install nginx -y