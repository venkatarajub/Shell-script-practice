#!/bin/bash

#ID=$(id)

if [ $EUID -ne 0 ]
then
    echo "User is not having root access"
else
    echo "User is having root access"
fi