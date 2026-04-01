#!/bin/bash

USERID=$(id -u) #this command check user id
read USERID 
if [ $USERID -ne 0 ] #if check user have root access or not i.e 0 for root access 1 for not root
then
    echo "user don't have root access"
    exit 1
else
    echo "user have root access"
fi
dnf list installed git #list all packages and check git is there or not 
if [ $? -ne 0 ] #echo $? it tell us previes command true or not if $?=0 then it install git 
then
    echo "install git,if it installed say git already installed"
    dnf install git -y
    
else
    echo "don't install git"
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "install mysql if it already install plz say already installed"
    dnf install mysql -y
else
    echo "don't install mysql "
fi

if [ $? -ne 0 ]
then
    echo "it's not installed plz check it"
    exit 1
else
    echo "it is installed"

fi

