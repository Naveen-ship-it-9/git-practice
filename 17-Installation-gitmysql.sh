#!/bin/bash

USER=$(id -u)
read USER
if =[ $USER -ne 0 ]
then
    "user don't have root access"
else
    "user have root access"
fi

