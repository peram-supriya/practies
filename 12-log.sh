#!/bin/bash

USERID=$(id -u)
LOG_folder="/var/log/practies"
LOG_FILE="/var/log/practies/$0.log"

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

dnf install nginxw -y &>> $LOG_FILE
validate $? "nginx installation"

dnf install mysql -y &>> $LOG_FILE
validate $? "mysql installation"

dnf install nodejs -y &>> $LOG_FILE
validate $? "nodejs installation"