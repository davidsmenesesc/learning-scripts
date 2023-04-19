#!/bin/bash

#Hello from the main OS

#Display 'Hello'
echo 'Hello'

#Assign a value to a variable
WORD='script'

echo "$WORD"

echo '$WORD'

#Combine variable with hardcoded text

echo "Hello ${WORD}"

echo "${WORD}ing is fun"

#How not to append
echo "$WORDing is fun"

#Create variable
ENDING='ed'

#Combine variables

echo "This is ${WORD}${ENDING} ."

#Reassing value in ENDING
ENDING='ing'
echo "${WORD}${ENDING} is fun! "
#Reassing one more time
ENDING='s'
echo " You are going to write a lot of ${WORD}${ENDING} in this class"
