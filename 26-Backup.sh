#!/bin/bash
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}
#$3 if user not meantion how may days then we take it has 14 days
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
USAGE()
{
    echo -e "$Y $USAGE:: $N sh filename.sh <source dir> <destination dir> <days(optinal)>"
    exit 1

}
#check source and destitation are provided or not
if [ $# -lt 2 ]
then
    USAGE
fi
#now checking sourcedir and destination dir
if [ -d $SOURCE_DIR ]
then
    echo -e "$R $SOURCE_DIR exist $N"
else
    echo -e "$G $SOURCE_DIR does not exist...plz check $N"
    exit 1
fi
if [ -d $DEST_DIR ]
then
    echo -e "$Y $DEST_DIR is exist $N"
else
    echo -e "$G $DEST_DIR is not exists plz check $N"
    exit 1
fi



