#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
N=$((1 + $RANDOM % 1000))
NUM='^[0-9]+$'
GUESSES=0

echo "Enter your username:"
read USERNAME

PREV_GAMES=$($PSQL "SELECT COUNT(username) FROM games WHERE username='$USERNAME'")

if [[ $PREV_GAMES -eq 0 ]]
then
 echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
 BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE username='$USERNAME'")
 echo -e "Welcome back, $USERNAME! You have played $PREV_GAMES games, and your best game took $BEST_GAME guesses."
fi

TAKE_GUESS() {
  if [[ $1 ]]
  then
    echo -e "$1"
  fi
  read GUESS
if [[ $GUESS =~ $NUM ]]
then
 GUESSES=$((GUESSES+1))
 if [[ $GUESS -eq $N ]]
 then
  echo "You guessed it in $GUESSES tries. The secret number was $N. Nice job!"
  SAVE_GAME=$($PSQL "INSERT INTO games(username, guesses) VALUES('$USERNAME', $GUESSES)")
 elif [[ $GUESS -lt $N ]]
 then
  TAKE_GUESS "It's higher than that, guess again:"
 else # guess > n
  TAKE_GUESS "It's lower than that, guess again:"
 fi
else
 TAKE_GUESS "That is not an integer, guess again:"
fi
}

TAKE_GUESS "Guess the secret number between 1 and 1000:"
