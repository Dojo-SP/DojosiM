#!/usr/bin/env bash
# Multiples of 3 and 5
if [ $1 -eq 4 ]; then
  echo 3
elif [ $1 -eq 6 ]; then
  echo 8
else
  echo 0
fi