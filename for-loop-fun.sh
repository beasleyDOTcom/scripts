#!/bin/bash

echo "please enter the number of words in a sentence"
read numOfWords
# note the use of back ticks --> bassically runs whatever is in back ticks and pastes it back into code seperated by spaces
for i in `seq 1 $numOfWords`
do
    echo $i
done

echo "please enter the sentence"
read sentence
for word in $sentence    
do
    echo $word
done


echo "please enter the number of words in sentence, followed by the sentence you'd like printed"
read k otherSentence
#alternative to using back ticks
for j in {1..10}
do
    echo $j
    echo $otherSentence[$j]
done

#prints every uppercase letter of alphabet
for uppercaseLetter in {A..Z}; do
    echo $uppercaseLetter
done
# another alternative to backticks
# cat data.sh (whole contents of data will be substituted back in this for loop by space)
for word in $(<data.sh); do
    echo $word
done

echo "how many bash scripts do you think you've written?"
read numberOfScripts
z=1
# file globbing
for script in *.sh

do
    echo $z
    echo $script
    ((z=$z+1))
done
if [[ 1 < 2 ]]
then
    echo 'one is less than two'
fi
if [[ $numberOfScripts < $z ]]
then 
    echo 'You guessed too low!'
    echo "there are:  ${z} scripts"
elif [[ $numberOfScripts > $z ]]
then 
    echo 'You guessed too high!'
    echo "there are: ${z} scripts"
else 
    echo 'You NAILED IT! Good Guess!'
fi