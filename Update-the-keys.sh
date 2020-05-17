#! bin/bash

#Problem statement
# The script should take 2 arguments :
# 1) Directory path of parameters
# 2) Directory path of source

# For each file inside parameters, the values inside should be replaced in the source files.
# For eg-> If there are two parameters file. There should be 6 files inside the Output Directory corresponsing to each parameters file.
# All param files contain key value pairs which has to be replaced inside source files and written in an output directory.

# param_file1
# param_file2

# source1
# source2
# source3

# OUTPUT: 6 files

# param_file1 -> source1
# param_file1 -> source2
# param_file1 -> source3

# param_file2 -> source1
# param_file2 -> source2
# param_file2 -> source3


usage() #this function will provide details to use this script
{
    echo "Please provide two aruments"
    echo "1) Directory path of parameters"
    echo "2) Directory path of source"
}    
#checking number arguments pass by the user
if [ $# -ne 2 ] 
    then usage 
#If user provides two arguemnst
else 
    echo "Checking paths are valid or not"
    # checking path are valid or not
    if [ ! -d $1 -a ! -d $2 ]  
        #if Paths are invalid
        then echo "Paths are invalid. Please provide the correct paths"
    else 
    # if Paths are valid      
        echo "Paths are valid"
        # checking number of file present in source
        file_count=1
        para_count=1
        for source_file in "$2"/*
        do  
            for para_file in "$1"/* 
            do  
                if [ -d result ]
                then
                echo "Result dir is already present"
                else
                    echo "Making result dir"
                    `mkdir "result"`
                fi
                if [ -f "result"/"sourcefile_$file_count-para_file_$para_count.conf" ] 
                then
                        echo "Result File is Present"
                         `truncate -s 0 "result"/"sourcefile_$file_count-para_file_$para_count.conf"`
                else
                        echo "Result File was not Present"
                        `touch "result"/"sourcefile_$file_count-para_file_$para_count.conf"`
                fi         
                while read -r source_line
                do

                    len="${#source_line}"
                    # echo $source_line
                    # echo $len
                    OutputLine=""
                    for (( i = 0 ; i <= $len -1 ; ++i )) ; do
                        char="${source_line:i-1:1}"

                        if [ "$char" != "{" ] ;then
                            OutputLine+=$char
                        else
                            source_key=""
                             ((++i))
                            while [ "$char" != "}" ]
                            do
                                source_key+="${source_line:i-1:1}"
                                ((++i))
                                char="${source_line:i-1:1}"
                            done
                            # echo $source_key
                            while IFS= read -r para_line
                            do
                                IFS='='
                                read -a keyvalue <<< "$para_line"
                                key="${keyvalue[0]}"
                                value=$(echo ${keyvalue[1]} | cut -c1-${#keyvalue[1]}) 
                                if [ "$source_key" = "$key" ] ;then
                                        # echo "Updating key $key with value $value"
                                        
                                        OutputLine+="$value"
                                        break 
                                fi                

                            done < "$para_file"


                        fi      
                    done   
                    echo "$OutputLine" >> "result"/"sourcefile_$file_count-para_file_$para_count.conf"


                done < "$source_file"
                 
                para_count=$(( $para_count + 1 ))
            done 
            para_count=1
            file_count=$(( $file_count + 1 ))
        done

        
   fi
fi     