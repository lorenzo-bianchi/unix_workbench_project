#!/usr/bin/env bash
# File: guessinggame.sh

function guessing {
    num=$(ls -a | wc -l)-2

    echo "Guess how many files and directories (all of them) are here:"
    read num_user
    while ! [[ "$num_user" =~ ^[0-9]+$ ]]
    do
         echo "Insert a number, please"
         read num_user
    done

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
        while ! [[ "$num_user" =~ ^[0-9]+$ ]]
        do
             echo "Insert a number, please"
             read num_user
        done
    done

    echo "Well done, bro!"
}

guessing
