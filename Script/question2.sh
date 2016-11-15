#!/bin/bash

cd $1
ARCHIVE=`ls *.tgz`

for i in $ARCHIVE; 
do
tar xzvf $i
done

