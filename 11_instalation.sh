#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "User is not having the root access, run the script with root access"
    exit 1
fi
dfn list installed mysql
if [ $? eq 0 ]
then
    echo "Mysql already installed nothing to do"
else 
    echo "My SQL not installed.. loading instalation"
    dnf install mysql -y
    if [ $? eq 0 ]
    then
        echo "Mysql Successfully installed"
    else
        echo "Mysql not instlled pls check"
        exit 1
    fi
fi
