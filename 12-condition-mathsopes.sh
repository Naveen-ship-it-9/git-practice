#!/bin/bash

# echo "given number is:"
# read x
# read y

# if (( x > y))
# then
#     echo "given number is greater than"
# else
#     echo "given number is leass then"
# fi

echo "given number is:"
read x
read y

if [ x > y ]
then
    echo "given number is greater than"
else
    echo "given number is leass then"
fi