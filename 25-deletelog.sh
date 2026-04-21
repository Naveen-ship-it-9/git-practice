#!/bin/bash
SOURCE_DIR=/c/Users/kanap/logs
if [ -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR exists"
else
    echo "$SOURCE_DIR does not exists"
    exit 1
fi
FILES=$(find "$SOURCE_DIR" -name "*.log" -mtime +14)
echo "files: $FILES"
while IFS= read -r line
do
    echo "Deleting line: $line"
    rm -rf $line
done <<< $FILES


# SOURCE_DIR=/c/Users/kanap/logs
# if [ -d $SOURCE_DIR ]
# then
#     echo "$SOURCE_DIR exists"
# else
#     echo "$SOURCE_DIR does not exists"
#     exit 1
# fi
# FILES=$(find "$SOURCE_DIR" -name "*.log" -mtime +14)
# echo "files: $FILES"
# while IFS= read -r file
# do
#     echo "Deleting file: $files"
#     rm -rf $file
# done <<< $FILES

