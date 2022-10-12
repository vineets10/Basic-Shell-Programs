#!/bin/bash

echo "Enter 1st number:-"
read a
echo "Enter 2nd number:-"
read b
echo "Enter 3rd number:-"
read c
largest=0
echo "The largest number is:-"
if [ $a -gt $largest ]
then
    largest=$a
fi
if [ $b -gt $largest ]
then
    largest=$b
fi
if [ $c -gt $largest ]
then
    largest=$c
fi
echo $largest
