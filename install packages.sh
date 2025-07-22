#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "Please run this script with root access."
exit 1
else
echo "you are super user."
fi

for i in "$@"
do
  echo "Installing package: $i"
  dnf install -y "$i"

  if [ $? -ne 0 ]; then
    echo "\e[31m Failed to install $i"
    exit 1
  else
    echo "\e[32m $i installed successfully"
  fi
done

 