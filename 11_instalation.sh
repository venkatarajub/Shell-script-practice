#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "User is not having the root access, run the script with root access"
fi
dfn list installed mysql