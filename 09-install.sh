#!/bin/bash

USERID=$(id -u)

# check root access or not
if [ $USERID -ne 0 ]; then
        echo "Please run this scrippt with root access"
        exit 1
 fi

 echo "I am continuing .."
 
dnf install  mysqldfadfd

echo " I am continuning ..."

echo "I am still continuning ..."
if [ $? -ne 0 ]; then
 echo "Installing MYSQL is ... FAIILED"
 exit 1
else
  echo "Installing MYSQL is ... SUCCESS"
fi