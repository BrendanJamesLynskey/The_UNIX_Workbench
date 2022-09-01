#!/bin/bash

# Entry for Coursera 'The Unix Workbench'
# Tested on Linux BASH
# Brendan Lynskey 2022

echo "Guess the number of files in the current directory"

# Find number of files in current dir
ans=$(ls | wc -l)

#Initial value for while loop
guess=-1

# Prompt user for guesses until correct answer is given
while [ $guess -ne $ans ]
do
    echo "Enter your guess"
    read guess

    if [ $guess -gt $ans ]
    then
	    echo "Your guess was too high"
    fi

    if [ $guess -lt $ans ]
    then
	    echo "Your guess was too low"
    fi
done

echo "Your guess was correct"
