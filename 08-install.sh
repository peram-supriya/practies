#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]; then
    echo "print as root user need to run this script"

fi

echo "installing nginx"
dnf install nginx -y