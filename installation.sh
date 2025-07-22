#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
  echo "Please run the script with root access"
  exit 1 # Manually exit if error comes
else
  echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "Installation of mysql is failure"
exit 1
fi

dnf install git -y

if [ $? -ne 0 ]
then 
echo "Installation of git is Failure"
exit 1
else
installation of git is success
fi

echo "is script proceeding?