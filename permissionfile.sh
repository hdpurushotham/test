#!/bin/bash

echo "Enter the name"
read name

if [ -f $name ]; then
        echo "The $name is a file"
        if [ -r $name ]; then
                echo "The file has read permission"
       		chmod 400 $name
		echo "The file has been granted 400 permission"
	 fi
fi
