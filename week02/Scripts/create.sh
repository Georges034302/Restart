#!/bin/bash
#create n-files sequentially using touch
#n is the number number of files passed as argument to the script

current=$(date '+%d-%m-%Y') #get the current date
folder=$(whoami)-$current   #set the directory name
#mkdir $folder               #create the directory

echo "Creating $n files ..."
n=$1
first=1

while true
do
        if [ -e $(whoami)$first.txt ]
        then
                ((first++))
        else
                break
        fi
done

for((i=$first-1;i<=$(($first+$n));i++))
do
       	if [ $i -eq 0 ]
       	then
		touch $(whoami).txt
	else
		touch $(whoami)$i.txt
	fi
done


ls -l
