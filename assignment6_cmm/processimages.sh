#!/bin/bash

array=($(ls assignment6_cmm/images))

for i in "${!array[@]}"
do
	filename=${array[i]}
	filesize=$(stat -c%s "$filename")
	if [ $filesize -gt 1000000 ]; then
		mv assignment6_cmm/images/$filename assignment6_cmm/processed_images/large
	else
		mv assignment6_cmm/images/$filename assignment6_cmm/processed_images/small
	fi
done
