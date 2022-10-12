#!/bin/bash

echo "Enter a number:-"
read f

fact=1

while [ $f -gt 1 ]
do
    fact=$((fact * f))
    f=$((f - 1))
done

echo $fact