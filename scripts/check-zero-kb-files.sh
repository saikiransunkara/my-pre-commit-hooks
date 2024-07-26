#!/bin/bash

FILES=$(git diff --cached --name-only)


for FILE in $FILES; do
	if [ ! -s "$FILE" ];then
		echo "Error: $FILE is a 0 KB file."
		exit 1
	fi
done

exit 0
