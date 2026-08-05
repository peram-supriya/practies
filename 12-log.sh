#!/bin/bash

USERID=$(id -u)
LOG_folder="/var/log/practies"
LOG_FILE="/var/log/practies/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Running as root user" | tee -a $LOG_FILE
    exit 1


fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "$2 failed" | tee -a $LOG_FILE
        exit 1

    else
        echo "$2 successful" | tee -a $LOG_FILE
fi
}

dnf install nginx -y &>> $LOG_FILE
validate $? "nginx installation"

dnf install mysql -y &>> $LOG_FILE
validate $? "mysql installation"

dnf install nodejs -y &>> $LOG_FILE
validate $? "nodejs installation"