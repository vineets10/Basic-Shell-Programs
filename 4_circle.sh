#!/bin/bash


#echo "Enter the radius of a circle in cms:-"
#read r
#pi=3.14
#two=2
#area=`expr $pi \* $r \* $r`
#circum=`expr $two \* $pi \* $r`
#echo "Area:- $area" 
#echo "Circumference:- $circum" 
echo "Enter the radius of a circle : "
read r
area=$(echo "scale=2;3.14 * ($r * $r)"|bc)
d=$(echo "scale=2;2 * $r"|bc)
circumference=$(echo "scale=2;3.14 * $d"|bc) 
echo "Area of circle is $area cms^2"
echo "Circumference of circle is $circumference cms"