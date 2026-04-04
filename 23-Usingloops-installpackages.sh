#!/bin/bash

USERID=0    #$(id -u)
G="\e[31m"
R="\e[32m"
N="\e[0m"
CHECK_ROOT()
{
    if [ $USERID -ne 0 ]
    then
        echo "user dont have root access plz check it...."
        exit 1
    else
        echo "user have root access..."
    fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is.... $R Failed $N"
        exit 1
    else
        echo -e "$2 is.... $G Succ $N"
    fi
}
CHECK_ROOT
for package in $@
do
    echo "$package"
done

# USERID=0    #$(id -u)
# G="\e[31m"
# R="\e[32m"
# N="\e[0m"
# CHECK_ROOT()
# {
#     if [ $USERID -ne 0 ]
#     then
#         echo "user dont have root access plz check it...."
#         exit 1
#     else
#         echo "user have root access..."
#     fi
# }
# VALIDATE()
# {
#     if [ $1 -ne 0 ]
#     then
#         echo -e "$2 is.... $R Failed $N"
#         exit 1
#     else
#         echo -e "$2 is.... $G Succ $N"
#     fi
# }
# CHECK_ROOT
# for package in $@
# do
#     dnf list inatalled $PACKAGE
#     if [ $? -ne 0 ]
#     then
#         echo "$PACKAGE not insatlled going to insatll it....."
#         dnf install $PACKAGE -y
#         VALIDATE $? "Insalling $PACKAGE"
#     else
#         echo "$PACKAGE insatlled no need to do any thing..."
#     fi
# done

