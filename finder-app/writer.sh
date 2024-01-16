#!/bin/bash
#Creates a new file with name and path "writefile" with content "writestr", overwriting any existing file and creating the path if it doesn't exist.
#Author:Amira Hussein

if [ $# -lt 2 ] 
then
 echo "You should pass 2 arguments"
 exit 1
 else
  writefile=$1
  writestr=$2
fi



mkdir -p "$(dirname "$writefile")" && touch $writefile
echo $writestr > $writefile
