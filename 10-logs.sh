#!/bin/bash

USERID=$(id -u)
LOG_DIR=/home/ec2-user/shell-logs
LOGS_FILE=$LOG_DIR/$(date +%F-%H-%M-%S).log
# check root access or not
if [ $USERID -ne 0 ]; then
        echo "Please run this scrippt with root access"
        exit 1
 fi

# first arg -> what are you trying to install
# second arg ->exit copde
VALIDATE(){
        if [ $2 -ne 0 ]; then
                echo "Installing $1 is ...FAILED"
                exit 1
        else
                echo "$1 is installed successfully"
        fi
}
#echo "I am continuing .."
dnf list installed mysql

if [ $? -eq 0 ]; then 
        echo "MySQL is already installed ...SKIPPING"
else
   echo "Installing MySQL"
   dnf install mysql -y
   VALIDATE MYSQL $? 
   if 
   
   dnf list installed nginx
   if [ $? -ne 0 ]; then 
        echo "nginx is already installed ..SKIPPING"
        exit 1
   else
        echo "Installing nginx"
        dnf install nginx -y
        VALIDATE MYASQL $?
  fi

