#!/bin/bash

echo "enter name"
read name
if [ -f $name ]
then
echo "$name is a file"
elif [ -d $name ]
then
echo "$name is a directory"
else
mkdir $name
fi
