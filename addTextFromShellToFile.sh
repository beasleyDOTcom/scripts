#!/bin/bash

echo "What would you like to name your file?(camelCase)"
read fileName

echo "What text would you like to insert into this file?"
read text

echo $text >> $fileName.sh

cat $fileName.sh

