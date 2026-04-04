#!/bin/bash
USERID=$(id -u)
CHECK_ROOT()
{
    if [ $USERID -ne 0 ]
    then
        echo "user dont have root access plz check and use sudo"
        exit 1
    else
        echo "user have root access"
    fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "$2 is....Failed"
        exit 1
    else
        echo "$2 is....Succ"
    fi
}
CHECK_ROOT

dnf list installed git

if [ $? -ne 0 ]
then
    echo "git not installed going to install it..."
    dnf install git -y
    exit 1
else
    echo "git is installed"
fi
VALIDATE $? "Insatlltion git"
dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "my sql not insatlled going to insatll it...."
    dnf insatll mysql -y
    exit 1
else
    echo "my sql is insatlled"
fi
VALIDATE $? "Insatllation mysql"



