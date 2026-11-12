
#!/usr/bin/env bash

# Function to count files in the current directory
function count_files {
    find . -maxdepth 1 -type f | wc -l
}

# Get the correct number of files
number=$(count_files)

# Welcome message
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Initialize the guess
guess=0

# Continue until the guess is correct
while [[ $guess -ne $number ]]
do
    read -p "Enter your guess: " guess

    # Check if the input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
        guess=0
    elif [[ $guess -lt $number ]]
    then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $number ]]
    then
        echo "Your guess is too high. Try again!"
    fi
done

# Congratulate the user
echo "Congratulations! You guessed correctly!"
echo "There are $number files in this directory."
