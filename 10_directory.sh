#!/bin/bash

if [ -d "tempdirectory/temp" ]
then
	echo "Directory tempdirectory/temp exists"
else
	echo "Directory tempdirectory/temp does not exist"
	mkdir "tempdirectory"
	cd "tempdirectory"
	mkdir "temp"
	echo "Directory tempdirectory/temp made"
fi
