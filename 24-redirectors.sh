#!/bin/bash
# LOGES_FOLDER="/var/log/shall_script"
# SCRIPT_NAME=$(echo "24-redirectors.sh" | cut -d "." -f1)
# TIME_STAMP=$(date +%Y-%m-%d-%H-%m-%S)
# LOG_FILE="$LOGES_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
# mkdir -p /var/log/shall_script
# userid=0  #$(id -u)
# R="\e[31m"
# G="\e[32m"
# Y="\e[33m"
# N="\e[0m"
# CHECK_ROOT()
# {
#     if [ $userid -ne 0 ]
#     then
#         echo -e "$R user dont have root access plz cehck... $N" &>>$LOG_FILE
#         exit 1
#     else
#         echo -e "$R user have root access...$N" &>>$LOG_FILE
#     fi
# }
# VALIDATE()
# {
#     if [ $1 -ne 0 ]
#     then
#         echo -e "$2 is ...$R Failed $N" &>>$LOG_FILE
#         exit 1
#     else
#         echo -e "$2 is ... $G Succ $N" &>>$LOG_FILE
#     fi
# }
# USAGE()
# {
#     #this is usefull to undersatnd the user he need to give package names
#     echo -e "$Y user need to give package name like sudo sh filename package1 package2 package3... $N"
#     exit 1
# }

# echo "script executing time is...$(date)"

# CHECK_ROOT

# if [ $# -eq 0 ]
# then
#     USAGE
# fi

# for package in $@
# do
#     dnf list installed $package
#     if [ $? -ne 0 ]
#     then
#         echo -e "$R $package not installed...going to install it.... $N" &>>$LOG_FILE
#         dnf install $package -y &>>$LOG_FILE
       
#         VALIDATE $? "package installing"
#     else
#         echo -e "$G $pacake is installed noting to do.... $N" &>>$LOG_FILE
#     fi
# done

#so if new user using to he do know packages need to give so we usage fuction
#(viri avarina use chesay valaki teleyadu ga em pacakages kavali ani like manualga evali ano)


#print logs both log file and treminal need to use command like tee



logs_folder="/var/log/shell_script"
script_name=$(echo "24-redirectors.sh" | cut -d "." -f1)
time_stamp=$(date +%Y-%m-%d-%H-%m-%S)
log_file="$logs_folder/$script_name$time_stamp.log"
mkdir -p /var/log/shell_script

USERID=0 #$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

CHECK_ROOT()
{
    if [ $USERID -ne 0 ]
    then
        echo -e "$R user dont have root access plz check....and use sudo $N" | tee -a $log_file
        exit 1
    else
        echo -e "$G user have root access... $N" | tee -a $log_file
    
    fi

}
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is.....$R failed $N" | tee -a $log_file
        exit 1
    else
        echo -e "$2 is.....$G succ $N" | tee -a $log_file
    fi
}
USEAGE()
{
    echo -e "$Y user need to give package names... package1 package2 package3 $N"
    exit 1

}
CHECK_ROOT

if [ $# -ne 0 ]
then
    USEAGE
fi

for package in $@
do
    dnf list installed $package &>>$log_file
    if [ $? -ne 0 ]
    then
        echo -e "$R $package need to install...going to insatll it... $N" | tee -a $log_file
        dnf $package install -y &>>$log_file
        VALIDATE $? "$package insatallation"
       
    else
        echo -e "$G $package installed no need to do install.... $N" | tee -a $log_file
    fi
done