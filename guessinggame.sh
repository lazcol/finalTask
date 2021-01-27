#!/usr/bin/bash
#File: guessinggame.sh

# Final assignment in the coursera course of Bash, Make, Git & GitHub.

# The guessinggame.sh program should have the following behavior:

# When the program starts the user should be asked how many files are in the current directory,
# and then the user should be prompted for a guess. If the user's answer is incorrect the user
# should be advised that their guess was either too low or too high and then they should be
# prompted to try to guess again.
# If the user's guess is correct then they should be congratulated and the program should end.
# - The program should not end until the user has entered the correct number of files in the
#   current directory.
# - The program should be able to be run by entering bash guessinggame.sh into the console.
# - The program should contain at least one function, one loop, and one if statement.
# - The program should be more than 20 lines of code but less than 50 lines of code.

variable=$( ls -l | egrep ^[^d] | wc -l )
let variable=variable-1

echo -n "How many archives there are in this directory? : "
read arc

while [[ $arc != $variable ]]
do
  if [[ $arc -lt $variable ]]
  then
    echo "you're guess it's low"
  elif [[ $arc -gt $variable ]]
  then
    echo "you're guess it's high"
  fi
  echo -n "How many variables there are in this directory? : "
  read arc
done

echo "Congrats!, you're guess it's right"
exit 0