#!/bin/bash -x

echo "Welcome to Arithmetic Computation"

#TAKE USER INPUT 
read -p "Enter the value of a :" number1
read -p "Enter the value of b :" number2
read -p "Enter the value of c :" number3

#ARITHMETIC OPERATION
answer=$(echo "scale=2;$number1%$number2+$number3"|bc)

#DISPLAY THE RESULT
echo $answer
