#!/bin/bash -x

echo "Welcome to Arithmetic Computation"

#TAKE USER INPUT 
read -p "Enter the value of a :" number1
read -p "Enter the value of b :" number2
read -p "Enter the value of c :" number3

#ARITHMETIC OPERATIONS
answer1=$(echo "scale=2;$number1+$number2*$number3"|bc)
answer2=$(echo "scale=2;$number1*$number2+$number3"|bc)
answer3=$(echo "scale=2;$number3+$number1/$number2"|bc)
answer4=$(echo "scale=2;$number1%$number2+$number3"|bc)

#STORE ANSWERS IN THE DICTIONARY
declare -A answersDictionary

answersDictionary[answer1]=$answer1
answersDictionary[answer2]=$answer2
answersDictionary[answer3]=$answer3
answersDictionary[answer4]=$answer4

#DISPLAY ANSWERS IN THE DICTIONARY
echo "answers in the dictionary : ${answersDictionary[@]}"
