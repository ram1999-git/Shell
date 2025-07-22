#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0]
then
 echo "Plese run the script with root access"
 exit 1 #MANUALLY EXIT IF ERROR COMES.
else
 echo "You are super user"
fi
 
 
