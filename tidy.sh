#!/bin/bash

git clean -n -d
read -p "Are you sure you want to delete these files ? [y or n]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	git clean -f -d
	echo ""
	echo "Deleted"
fi
