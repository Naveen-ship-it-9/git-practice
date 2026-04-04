#!bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[33m"
#colours uses it while help u to unsersatnd Succ or failed if we not use $N continues ga colour vachedi 

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
VALIDATE ()
{
    if [ $? -ne 0 ]
    then
        echo -e "$2 is....$R Failed $N"
        exit 1
    else
        echo -e "$2 is .....$G Succ $N"
    fi
}
CHECK_ROOT
dnf list installed git
if [ $? -ne 0 ]
then
    echo "git not there going to install it....."
    dnf install git -y
    VALIDATE $? "Insatllation git"
else
    echo "git is there no need to install it...."
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "mysql not installed going to install it...."
    dnf install git -y
    VALIDATE $? "Insatllation mysql"
else
    echo "mysql installed no need to do any thing..."
fi


