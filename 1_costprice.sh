#!/bin/bash
echo "Cost Price:-"
read cp
echo "selling price:-"
read sp
var=0
if [ $cp -eq $sp ]
then
echo "No profit or loss"
fi
if [ $cp -gt $sp ]
then
var=`expr $cp - $sp`
echo "Loss:- $var"
else
var=`expr $sp - $cp`
echo "Profit:- $var"
fi

