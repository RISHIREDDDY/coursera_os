#!/bin/bash

# Get the number of files in the current directory
file_count=$(ls -1 | wc -l)

# Welcome message
echo "Welcome to the Guessing Game!"
echo "Try to guess the number of files in the current directory."

# Initialize the guess variable
guess=-1

# Loop until the correct guess is made
while [ "$guess" -ne "$file_count" ]; do
    # Prompt the user for a guess
    read -p "Enter your guess: " guess
    
    # Check if the guess is correct, too high, or too low
    if [ "$guess" -lt "$file_count" ]; then
        echo "Your guess is too low. Try again."
    elif [ "$guess" -gt "$file_count" ]; then
        echo "Your guess is too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files: $file_count"
    fi
done
