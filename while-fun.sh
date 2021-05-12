#!/bin/bash
echo 'How many times w ould you like to print "ha ha!"?'
read i
while
    ((i>0))
do 
    echo "ha ha!"
    ((i=i-1))
done