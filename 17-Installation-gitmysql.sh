#!/bin/bash

USERID=$(id -u)
read USERID
if [ $USERID -ne 0 ]
then
    "user don't have root access"
    exit 1
else
    "user have root access"
fi

