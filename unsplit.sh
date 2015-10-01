#!/bin/bash
#  Script.sh
#
#  Created by Marc Levine on 5/2/12.

FILES=*
for f in $FILES 
do
  
  # take action on each file. $f store current file name
	filename=$(basename $f)
	extension=${filename##*.}
	filename=${filename%.*}
	e2=${filename##*.}
	if [ "$extension" != "par2" ] && [ -f "$f" ] && [ "$e2" == "rar" ]
	then

	#echo "Processing $filename "
	cat $f >> $filename
	fi
done
