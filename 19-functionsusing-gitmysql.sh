#!/bin/bash
USERID=$(id -u) #this code for checking git is there or not in packages 
VALIDATE()
{
    #echo "exist nubmer is:$1"
    if [ $1 -ne 0 ] #manam instal chesena dani succ full ga checsama leda ani chepatham this function
    then
        echo "command is ... FAILD"
    else
        echo "command is .... SUCC"
    fi
}
if [ $USERID -ne 0 ]
then
    echo "please check user don't root access plz use sudo"
    exit 1
fi
dnf list installed git 

VALIDATE $?

# now code is for install git and my sql 


USERID=$(id -u)
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "command is...FAILD"
        exit 1
    else
        echo "command is...SUCC"
    fi
}
if [ $USERID -ne 0 ]
then
    echo "user don't have root access plz chek and use sudo"
    exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then
    echo "git is not there plz install it"
    dnf install git -y
    exit 1
else
    echo "git is installed no need to any action"
fi
VALIDATE $? "INstallin git"


