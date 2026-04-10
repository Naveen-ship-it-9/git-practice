#!/bin/bash
LOGES_FOLDER="/var/log/shall_script"
SCRIPT_NAME=$(echo "24-redirectors.sh" | cut -d "." -f1)
TIME_STAMP=$(date +%Y-%m-%d-%H-%m-%S)
LOG_FILE="$LOGES_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p /var/log/shall_script
userid=0  #$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
CHECK_ROOT()
{
    if [ $userid -ne 0 ]
    then
        echo -e "$R user dont have root access plz cehck... $N" &>>$LOG_FILE
        exit 1
    else
        echo -e "$R user have root access...$N" &>>$LOG_FILE
    fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is ...$R Failed $N" &>>$LOG_FILE
        exit 1
    else
        echo -e "$2 is ... $G Succ $N" &>>$LOG_FILE
    fi
}
USAGE()
{
    echo -e "$Y user need to give package name like sudo sh filename package1 package2 package3... $N"
    exit 1
}
CHECK_ROOT

if [ $# -eq 0 ]
then
    USAGE
fi

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo -e "$R $package not installed...going to install it.... $N" &>>$LOG_FILE
        dnf install $package -y &>>$LOG_FILE
        exit 1
        VALIDATE $? "package installing"
    else
        echo -e "$G $pacake is installed noting to do.... $N" &>>$LOG_FILE
    fi
done

#so if new user using to he do know packages need to give so we usage fuction
#(viri avarina use chesay valaki teleyadu ga em pacakages kavali ani like manualga evali ano)

