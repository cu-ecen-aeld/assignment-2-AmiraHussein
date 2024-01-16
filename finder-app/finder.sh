#!/bin/bash
#Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory "filesdir" and all subdirextories and Y is the number of matching lines found in respective files, where a matching line refers to a line which contains "searchstr"(and may also contain additional content).
#Author:Amira Hussein

if [ $# -lt 2 ] 
then
 echo "You should pass 2 arguments"
 exit 1
 else
  filesdir=$1
  searchstr=$2
fi

test -d $filesdir

if [ $? -eq 1 ]
then 
 echo $filesdir "doesn't represent a directory on the filesystem"
 exit 1
fi

cd $filesdir
echo The number of files are "$(ls -A | wc -l)" and the number of matching lines are "$(grep -r $searchstr | wc -l)"

