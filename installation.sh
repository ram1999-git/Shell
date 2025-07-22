#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0]
then
 echo "Plese run the script with root access"
 else
 echo "You are super user"
 fi
 
 
