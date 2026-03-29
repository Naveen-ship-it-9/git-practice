#!/bin/bash

#takeing the number in side script
# INT=20

# if [ $INT -gt 30 ]

# then
#     echo "given number is greaterthan 30"
# else
#     echo "given number is leass than 30"

# fi

# giving one number inside and one number out side

# NUMBER=$1

# if [ $NUMBER -gt 50 ]

# then
#     echo "given  number is greater then 50"
# else
#     echo "given number is less than 50"
# fi

#geving both number in out side the script

INT=$1
NUMBER=$2

if [ $INT -gt $NUMBER ]

then
    echo "given number is greatethan"
else
    echo "given number is less than"
fi


