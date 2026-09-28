#!/bin/bash

ID=$(id)

if [ $ID eq 0 ]
then
    echo "User is having root access"
else
    echo "User is not having root access"
fi