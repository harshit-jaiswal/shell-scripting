#! /bin/bash
x=30
y=6

echo $(( x + y ))
echo $(( x - y ))
echo $(( x * y ))
echo $(( x / y ))
echo $(( x % y ))


echo $(expr $x + $y )
echo $(expr $x - $y )
echo $(expr $x \* $y ) # used to \ with *
echo $(expr $x / $y )
echo $(expr $x % $y )