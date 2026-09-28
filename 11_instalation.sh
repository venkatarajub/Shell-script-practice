#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "User is not having the root access, run the script with root access"
    exit 1
fi
dfn list installed mysql