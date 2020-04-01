#!/usr/bin/env bash
# File: guessinggame.sh

num=$(ls -a | wc -l)

echo "Guess how many files and directories (all of them) are here:"
read num_user

while [[ $num_user -ne $num ]]
do
    echo "Nope, I'm sorry"
    if [[ $num_user -gt $num ]]
    then
        echo "You guessed a bigger number"
    else
        echo "You guessed a lower number"
    fi
    
    echo ""
    echo "Try again:"
    read num_user
done

echo "Well done, bro!"
