#!/bin/bash
filename1="file1.txt"
filename2="file2.txt"

if cmp -s "$filename1" "$filename2" 
then
   	echo "Files are same."
else
    	echo "Files are different."
fi

