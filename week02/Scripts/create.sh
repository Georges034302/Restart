#!/bin/bash
#create n-files sequentially using touch

n=$1
echo "Creating $n files ..."

for((i=1;i<=$n;i++))
do
	touch $(whoami)-$i.txt
done

