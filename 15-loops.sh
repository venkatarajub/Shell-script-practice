#!/bin/bash

#install multiple packages
USERID=(id -u)
if [ $USERID -ne 0 ]
then
    echo "Run the screipt with root access"
    exit 1
fi

for package in $@
do
    echo $package
done

dnf list installed $package
if [ $? -ne 0 ]
then
    echo "$package not installed, going to install"
    dnf install $package -y
    if [ $? -ne 0 ]
    then
        echo "$package not installed. pls check"
        exit 1
    else
        echo "$package successfully installed"
    fi
else
    echo "$package already isnstalled. nothing to do"
fi
