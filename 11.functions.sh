#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Running as root user"
    exit 1


fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "$2 failed"
        exit 1

    else
        echo "$2 successful"
fi
}

dnf install nginx -y
validate $? "nginx installation"

dnf install mysql -y
validate $? "mysql installation"

dnf install nodejs -y
validate $? "nodejs installation"