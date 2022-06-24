#!/bin/bash

echo "Enter the name"
read name

if [ -f $name ]; then
	echo "The $name is a file"
	if [ -r $name ]; then
		echo "The file has read permission"
	else
		echo "The file doesnot have read permission"
	fi
	if [ -w $name ]; then
		echo "The file has write permission"
	else
		echo "The file doesnot have write permission"
	fi
	if [ -s $name ]; then
		echo "The file has some data"
	else
		echo "The file does not have data"
	fi
elif [ -d $name ]; then
	echo "The $name is a directory"
else
	echo "The file or directory does not exist"
fi
