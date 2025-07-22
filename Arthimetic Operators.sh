#!/bin/bash

#Addition of 2 numbers

Number1=$1
Number2=$2

add=$(($Number1+$Number2))
echo "Addition of Number1 and Number2 are :"${add}
sub=$(($Number1-$Number2))
echo "substraction of Number1 and Number2 are :"${sub}
mult=$(($Number1*$Number2))
echo "Multiplication of Number1 and Number2 are :"${mult}
div=$(($Number1/$Number2))
echo "Division of Number1 and Number2 are :"${div}
