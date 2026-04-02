#!/bin/bash
USERID=$(id -u)
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