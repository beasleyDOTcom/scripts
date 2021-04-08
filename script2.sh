#!/bin/sh
echo "What's the name of this code challenge? (camelCase)"
read name
mkdir $name
cd $name
code .
mkdir __tests__
touch $name.js
cd __tests__
touch $name.test.js
echo "You're only here once,  B E  K I N D  &&  H A V E  F U N !"