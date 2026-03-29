#!/bin/bash

echo "ask number is:"

read INT

echo "given user name is:$INT"

if ( ( $int -eq 0 ) )
then
    echo "even number"
else
    echo "not even number"

fi

