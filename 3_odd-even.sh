#!/bin/bash
echo "Enter a number"
read num
var=`expr $num % 2`
zero=0
if [ $var -eq $zero ]
then
echo "Even number"
else
echo "Odd number"
fi