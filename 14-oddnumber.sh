#!/bin/bash

# echo "given number is:"
# read a

# if (( a % 2 != 0 ))
# then
#     echo "given number is odd"
# else
#     echo "given number is not odd"
# fi

#using another style

read y

if [ $((y %2)) -ne 0 ] 
#if [(( $y %2 )) -ne 0] this not not wok syntax not correct always right like this if [ $((y %2)) -ne 0 ]
then
    echo "given number is odd"
else
    echo "given number is not odd"
fi


