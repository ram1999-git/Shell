#!/bin/bash

Number=$1

If[$Number -gt 10]; then
  echo "Given $Number greater than 10"
else
  echo "Given $Number lesser than 10"
fi 

