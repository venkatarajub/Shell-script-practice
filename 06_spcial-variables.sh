#!/bin/bash

echo "All variables passed in script: #@"
echo "No.Of variables passed in script: $#"
echo "current script name: $0"
echo "Current working directory: $PWD"
echo "User home dir: $HOME"
echo "PID of current running script: $$"
sleep 100 &
echo "PID of last background script: $!"