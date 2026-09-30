#!/bin/bash

#install multiple packages

for package in $@
do
    dnf install $package
done
