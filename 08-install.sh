#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "print as root user need to run this script"
    exit 1

fi

echo "installing nginx"
dnf install nginx -y