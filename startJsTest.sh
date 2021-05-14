#!/bash/script
# I want it to be super easy to test whatever code challenge I just named ---> No Way I'm willing to type npm test challengenamet.test.js everyday!
# I'd prefer to type nothing and just use the up arrow if possible.


# One way, would be to get the name of the current directory and run npm test with that name.test.js
    # get string to work with pwd
    # start from end of string looking for a /
    # once found, return substring from +1 index of / to end of string.

# another way would be to add/ overwrite the contents of a file (jsTestComand.txt) using > and have another alias jsTest that just grabs the name from that file and runs npm test with that
    # echo $name.test.js > jsTestCommand.txt
    # command < jsTestCommand.txt

# or actually find a way to run the process in the current terminal automatically

challengeName=$(<~/scripts/lastJsCodeChallenge.sh)
npm test $challengeName
echo 'Yay!'