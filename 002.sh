#!/usr/bin/env bash
# sum of even fibonacci elements not greater than 4 millions


fibonacci () {
    limit=$1
    n=1
    n_1=1
    while [ $n -le $limit ]; do
      echo $n
      n=$(( $n + $n_1 ))
      n_1=$(( $n - $n_1 ))
    done
}

even () {
  for n in $@; do
    if [ $(( $n % 2 )) = 0 ]; then
      echo $n
    fi
  done
}

sum_list () {
  printf $@
}