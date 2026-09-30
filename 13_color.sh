#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#checke user is having root access or not
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo -e "$Y run the script with roor access"
    exit 1
fi

#check package installed or not
dnf list installed mysql
if [ $? -ne 0 ]
then 
    echo -e mysql not installed.. going to $Y install $N
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo -e "$R installation failed $N, please check"
        exit 1
    else
        echo -e $G Mysql successfully installed $N
    fi
else
    echo -e "$G mysql already installed $N $Y nothing to do $N"
fi

