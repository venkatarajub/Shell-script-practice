#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "User not having the roor access, pls run the script with root access"
    exit 1
fi