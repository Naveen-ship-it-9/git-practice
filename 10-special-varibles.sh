#!/bin/bash

echo "All varibles passed to the script:$@"
echo "number of varibles passed to:$#"
echo "script name:$0"
echo "current working dir:$PWD"
echo "home dir of user:$HOME"
echo "PID of the script excuting now:$$"

sleep 100 &

echo "PID of last background command:$!"
 
