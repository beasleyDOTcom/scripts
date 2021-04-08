#!/bin/bash


./hasText.txt | while
    read a b c 
do
echo 'this is a: ' $a
echo 'this is b: ' $b
echo 'this is c: ' $c
done