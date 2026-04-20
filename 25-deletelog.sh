#!/bin/bash
source-dir="/Users/kanap/home/logs"
if [ -d $source_dir ]
then
    echo "$sourcedir exists"
else
    echo "$sourcedir does not exists"
    exit 1
fi
files=$(find $source_dir -name "*.log" -mtime +14)
echo "files:$files"

