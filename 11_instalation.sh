#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "User not having the roor access, pls run the script with root access"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "Mysql not instllaed. going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Mysql not installation failed, pls check"
        exit 1
    else
        echo "Mysql successfully installed"
    fi
else
    echo "MYSQL already installed, nothing to do"
fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "git not instllaed. going to install"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git not installation failed, pls check"
        exit 1
    else
        echo "git successfully installed"
    fi
else
    echo "git already installed, nothing to do"
fi