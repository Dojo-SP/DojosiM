#!/usr/bin/env bash

describe "001 - Multiples of 3 and 5"

it_works_for_1 () {
  test $(./001.sh 1) = 0
}

it_works_for_4 () {
  test $(./001.sh 4) = 3
}

it_works_for_6 () {
  test $(./001.sh 6) = 8
}

it_works_for_10 () {
  test $(./001.sh 10) = 23
}

it_works_for_10 () {
  test $(./001.sh 10) = 23
}

it_works_for_1000 () {
  expected=`python -c "print sum(x for x in range(1000) if (x % 3 == 0) or (x % 5 == 0))"`
  test $(./001.sh 1000) = $expected
  test $(./001.sh) = $expected
}

