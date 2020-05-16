#!/bin/bash


# Number Comparisons:
# -eq - is equal to - if [ "$a" -eq "$b" ]
# -ne - is not equal to - if [ "$a" -ne "$b" ]
# -gt - is greater than - if [ "$a" -gt "$b" ]
# -ge - is greater than or equal to - if [ "$a" -ge "$b" ]
# -lt - is less than - if [ "$a" -lt "$b" ]
# -le - is less than or equal to - if [ "$a" -le "$b" ]
# < - is less than - (("$a" < "$b"))
# <= - is less than or equal to - (("$a" <= "$b"))
# > - is greater than - (("$a" > "$b"))
# >= - is greater than or equal to - (("$a" >= "$b"))



count=10
if [ $count -eq 10 ]
    then 
    echo 'Its equal to 10'
fi    

if ((11 != 12))
    then echo 'True'
fi    


# String Comparisons:
# = - is equal to - if [ "$a" = "$b" ]
# == - is equal to - if [ "$a" == "$b" ]
# != - is not equal to - if [ "$a" != "$b" ]
# < - is less than, in ASCII alphabetical order - if [[ "$a" < "$b" ]]
# > - is greater than, in ASCII alphabetical order - if [[ "$a" > "$b" ]]
# -z - string is null, that is, has zero length

str=xyz
if [ $str = "xy" ]
    then echo 'Equal'   
elif [ $str = 'xyz' ]  
then
    echo 'Inside the else if'       
else echo 'Not equal'    
fi   