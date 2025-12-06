#!/bin/bash 

if [ $# -ne 2 ]; then
        echo "Error: two args required: writefile and writestr"
        exit 1
fi

writefile="$1"
writestr="$2"

writedir=$(dirname "$writefile")

mkdir -p "$writedir"
if [ $? -ne 0 ]; then
	echo "Error: failed to create direcoty path $writedir"
	exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
	echo "Error : failed to create file $writefile"
	exit 1
fi
