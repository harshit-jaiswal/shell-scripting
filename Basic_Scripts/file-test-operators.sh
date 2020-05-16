#!/bin/bash

#here we use : \c to keep the cursor on the same line 
#-e is used to enable the interpretation 
echo -e "Enter the name of the file : \c"
read filename
# echo $filename


# checking file exist or not on the same path
# -e to check file exist True=>when file is present False=> when file is not present
if [ -e $filename ]
    then echo 'File is present'
else
    echo 'file is not present'
fi            

# -f is used to check if file exist and it is regular or not
# -d check for directory
# -b block special file
# -c character special file
# -s check file is empty or not True=>not empty False=>empty 
# -r check read permission
# -w check write permission 
# -x check execute permission
