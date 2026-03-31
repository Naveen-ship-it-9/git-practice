#!/bin/bash

#printing user Id

# USER=$(id -u)

# echo "user id is:$USER"

# #printing user id root or not means 0 means root othere than 0 not root

# USER=$1
# read USER
# echo "user id is:$USER"

# if [ $USER -ne 0 ]
# then
#     echo "print user have no root access"
# else
#     echo "print user have root access"
# fi

USER=$(id -u)

echo "user id is:$USER"

if [ $USER -ne 0 ]
then
    echo "print user have no root access"
else
    echo "print user have root access"
fi
