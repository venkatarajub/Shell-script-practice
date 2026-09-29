#!/bin/bash

USERID=$(id -u)
VALIDATE(){   
    if [ $? -ne 0 ]
    then
        echo "package installation failed, pls check"
        exit 1
    else
        echo "package successfully installed"
    fi
}

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
    VALIDATE
else
    echo "MYSQL already installed, nothing to do"
fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "git not instllaed. going to install"
    dnf install git -y
    VALIDATE
else
    echo "git already installed, nothing to do"
fi