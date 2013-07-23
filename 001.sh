#!/usr/bin/env bash
# Multiples of 3 and 5

sum_of_multiples=0

for i in `seq $(( $1 - 1 ))`; do
  if [ $(( $i % 3 )) = 0 -o $(( $i % 5 )) = 0 ]; then
    sum_of_multiples=$(( $sum_of_multiples + $i ))
  fi
done

echo $sum_of_multiples