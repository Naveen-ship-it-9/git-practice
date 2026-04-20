#!/bin/bash
source-dir=/c/Users/kanap/logs
if [ -d $source_dir ]
then
    echo "$sourcedir exists"
else
    echo "$sourcedir does not exists"
    exit 1
fi
files=$(find $source_dir -name "*.log" -mtime +14)
echo "files:$files"

