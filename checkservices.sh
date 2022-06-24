#!/bin/bash

services="java postfix"

for i in $services
do
	systemctl is-active --quiet $i
	if [ $? -ne 0 ]; then
		echo "$i is not in progress"
	else
		echo "$i is in progress"
	fi
done
