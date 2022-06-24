#!/bin/bash

echo "Enter the name"
read name

if [ -f $name ]; then
	echo "The $name is a file"
elif [ -d $name ]; then
	echo "The $name is a directory"
else
	echo "The file or directory does not exist"
fi
