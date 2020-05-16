#! /bin/bash

#here we use "bc"
x=200.5
y=3
echo "$x + $y" | bc
echo "$x - $y" | bc
echo "$x * $y" | bc
echo "scale=2; $x / $y" | bc #scale used to set floating point precession
echo "$x % $y" | bc