#!/bin/bash

Number=$1

if [ "$Number" -gt 10 ]; then
  echo "Given $Number is greater than 10"
else
  echo "Given $Number is lesser than or equal to 10"
fi


