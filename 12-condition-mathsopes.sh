#!/bin/bash

echo "ask number is:"

read INT

echo "given user name is:$INT"

if (( $INT % 2 == 0 ))
then
    echo "even number"
else
    echo "not even number"

fi

