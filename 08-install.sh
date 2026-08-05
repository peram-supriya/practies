#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Running as root user"
    exit 1


fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "nginx installation failed"
    exit 1

else
    echo "nginx installation successful"
fi