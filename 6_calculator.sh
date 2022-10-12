#!/bin/bash
echo "Enter Operand 1"
read op1
echo "Enter Operand 2"
read op2
echo "1.ADDITION"
echo "2.SUBTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
echo "Choose Operation:-"
read op
a=1
b=2
c=3
d=4
if [ $op -eq $a ]
then
    res=`echo $op1 + $op2 | bc`
    echo $res
fi
if [ $op -eq $b ]
then
    res=`echo $op1 - $op2 | bc`
    echo $res
fi
if [ $op -eq $c ]
then
    res=`echo $op1 \* $op2 | bc`
    echo $res
fi
if [ $op -eq $d ]
then
    res=`echo "scale=2; $op1 / $op2" | bc`
    echo $res
fi
if [ $op -gt $d ]
then
    echo "Incorrect option chosen!!"
fi