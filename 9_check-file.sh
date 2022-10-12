#!/bin/bash
if [ -f file9.txt ]
then
    echo "File exists"
    echo "hello world" >> file9.txt
else
    echo "File does not exist"
    cat file9.txt
    echo "hello world" >> file9.txt
fi

