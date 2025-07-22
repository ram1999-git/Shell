#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
  echo "Please run the script with root access"
  exit 1 # Manually exit if error comes
else
  echo "You are super user"
fi
