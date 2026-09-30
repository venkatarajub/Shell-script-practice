#!/bin/bash

#install multiple packages
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

CHECK_ROOT(){    
    if [ $USERID -ne 0 ]
    then
        echo -e "Run the screipt with $Y root access $N"
        exit 1
    fi
}
VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo -e "$package $R not installed $N. pls check"
        exit 1
    else
        echo -e "$package $G successfully installed $N"
    fi

}
CHECK_ROOT

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo -e $Y "$package not installed, going to install $N"
        dnf install $package -y
        VALIDATE
    else
        echo -e "$package $G already isnstalled $N. nothing to do"
    fi
done

