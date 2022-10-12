#!/bin/bash
echo "Enter a number"
read num
a=2
ans=1
while [ $a -lt $num ]
do
    ans=`expr $num % $a`
    if [ $ans -eq 0 ]
    then
    echo "Not a Prime Number"
    break
    fi
    a=`expr $a + 1`
done
if [ $ans != 0 ]
then
echo "Prime Number"
fi