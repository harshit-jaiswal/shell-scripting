#!/bin/bash

#arguments are store in 1 2 3.... varibles
echo $1 $2 $3 

#$0 stores the script name
echo $0

# we can store the arguments in array
arg=("$@")
echo ${arg[0]} #here $1 become first element
echo ${arg[1]}
echo ${arg[2]}

#print all the arguments
echo "arguments list  : $@"

#print number of arguments
echo "Number of arguements : $#"