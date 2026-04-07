#!/bin/bash
LOGES_FOLDER="/var/log/shall_script"
SCRIPT_NAME=$(echo "24-redirectors.sh" | cut -d "." -f1)
TIME_STAMP=$(date +%Y-%m-%d-%H-%m-%S)
LOG_FILE="$LOGES_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p /var/log/shall_script
userid =$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
CHECK_ROOT()
{
    if [ $userid -ne 0 ]
    then
        echo -e " $R user dont have root access plz cehck... $N"
        exit 1
    else
        echo "user have root access"
    fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is ...$R Failed $N"
        exit 1
    else
        echo -e "$2 is ... $G Succ $N"
    fi
}
CHECK_ROOT
