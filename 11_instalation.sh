#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "User is not having the root access, run the script with root access"
    exit 1
fi
dfn list installed mysql
if [ $? -ne 0 ]
then
    echo "My SQL not installed.. loading instalation"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Mysql not instlled pls check"
        exit 1        
    else
        echo "Mysql Successfully installed"        
    fi
    echo "Mysql already installed nothing to do"
fi
