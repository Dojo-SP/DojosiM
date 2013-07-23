#!/usr/bin/env bash


source ./002.sh



describe "fibonacci"

it_fibonacci_1 () {
  test $(fibonacci 1) = 1
}
