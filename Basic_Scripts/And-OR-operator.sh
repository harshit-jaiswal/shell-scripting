#!/bin/bash/

#And Operator

age=19
#different ways of writing and operator
if [ $age -gt 18 ] && [ $age -lt 25 ]
    then
    echo "Your are young"
elif [ $age -gt 26 -a $age -lt 30 ] #-a for And
    then
    echo "You are still young"
elif [[ $age -gt 31 && $age -lt 45 ]] 
    then
    echo "Now you are getting old"
else
    echo "You are old"
fi        

        
# OR Operator    
    
# different ways of writing OR operator
if [ $age -eq 18 ] || [ $age -eq 25 ]
    then
    echo "Your are young"
elif [ $age -eq 26 -o $age -eq 30 ] #-o for And
    then
    echo "You are still young"
elif [[ $age -eq 31 || $age -eq 45 ]] 
    then
    echo "Now you are getting old"
else
    echo "You are old"
fi        