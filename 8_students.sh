#!/bin/bash

echo "Maths:-"
read m
echo "Science:-"
read s
echo "English:-"
read e

t=$(($m + $s + $e))
perc=$(($t / 3))

case $perc in
    [7][5-9]|[8-9][0-9]|[100])
    echo "First Division"
    ;;
    [6][0-9]|7[0-4])
    echo "Second Division"
    ;;
    [0-5][0-9])
    echo "Fail"
    ;;
esac