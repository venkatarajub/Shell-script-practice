#!/bin/bash

#ID=$(id)

if [ $EUID -ne 0 ]
then
    echo "User is not having root access get the root access"
else
    dnf install mysql -y
fi