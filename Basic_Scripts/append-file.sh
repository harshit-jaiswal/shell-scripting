#!/bin/bash

echo -e "Enter the file name : \c"
read filename

if [ -f $filename ] #checking file exist or not
    then 
    if [ -w $filename ] #checking file has write permission or not
        then
        echo "Type some data to append in file. To quite press ctrl+d"
        cat >> $filename
    else 
        echo "The file do not have write permission. Used chmod to change the permision"    
    fi 
else 
    echo "$filename not exist"
fi            