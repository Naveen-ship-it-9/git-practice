#!/bin/bash

USERID=$(id -u)
read USERID
if [ $USERID -ne 0 ]
then
    echo "user don't have root access"
    exit 1
else
    echo "user have root access"
fi

