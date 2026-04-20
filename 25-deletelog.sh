#!/bin/bash
SOURCE_DIR=/c/Users/kanap/logs
if [ -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR exists"
else
    echo "$SOURCE_DIR does not exists"
    exit 1
fi
files=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "files: $files"

