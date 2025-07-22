#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "Please run this script with root access."
exit 1
else
echo "you are super user."
fi

echo "All packages: $@"


 