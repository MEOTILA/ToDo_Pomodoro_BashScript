#!/bin/sh

read -p "enter number one: " num1
read -p "enter number two: " num2
read -p "enter operation(+/-): " operation

if [[ "$operation" == "+" ]]
then
echo $((num1 + num2))
elif [[ "$operation" == "-" ]]
then
echo $((num1 - num2))
fi

#read -p "enter number one: " num1
#read -p "enter number two: " num2
#read -p "enter operation(+/-): " operation
#
#if [ "$operation" = "+" ]
#then
#echo $((num1 + num2))
#elif [ "$operation" = "-" ]
#then
#echo $((num1 - num2))
#fi

