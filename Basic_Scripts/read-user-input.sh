#!/bin/bash


#Here we used read to read the input from console and store it in the varible name.
echo "Enter your name : "
read name
echo "Your name is $name"


#we can use read to input multiple varible at a time. Input the differnt varibale sparated by space
echo "Enter you Name and Surname :"
read name surname
echo "Your full name is $name $surname"


#use -p to input on the same prompt 
read -p 'Age :' age 
echo $age


#we can also make input silent. In which you don't want to show what your is typing.
#In such cases use -sp
read -sp 'Password :' password
echo $password


#read arry from the user
echo "Enter array :"
read -a array
echo "first element : ${array[0]}"
echo "Second element : ${array[1]}"


#read without varible : If you use read without varible the input saved in system variable REPLY
echo 'Enter your mobile number :'
read 
echo "Mobile number : $REPLY"