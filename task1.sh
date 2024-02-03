#!/bin/bash
echo "Enter the path"
read path

if [[ -f "$path" ]];
then 
        echo "file size is: $(stat -c %s "$path") bytes"
        echo "file type is: $(file -b --mime-type "$path")"
        echo "file permission is: $(stat -c %A "$path")"
else
        echo "This path not found"
fi

# this script is used for takes a file path as input and displays information about the file, such as its size, type, and permissions.
