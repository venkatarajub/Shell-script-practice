#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#checke user is having root access or not
USERID=$(id -u)

if ( $USERID -ne 0 )
then
    echo -e "$Y run the script with roor access"
    exit 1
fi
