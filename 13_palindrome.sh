#!/bin/bash
echo "Enter String"
read input
reverse=""

len=${#input}
for (( i=$len-1; i>=0; i-- ))
do 
	reverse="$reverse${input:$i:1}"
done
if [ $input == $reverse ]
then
    echo "string is a palindrome"
else
    echo "string is not a palindrome"
fi