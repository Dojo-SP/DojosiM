#!/usr/bin/env bash


source ./002.sh



describe "fibonacci"

it_fibonacci_1 () {
  test "$(fibonacci 1)" = 1
}

it_fibonacci_2 () {
  test "$(fibonacci 2)" = "`printf "1\n2"`"
}

it_fibonacci_5 () {
  test "$(fibonacci 5)" = "`printf "1\n2\n3\n5"`"
}

it_fibonacci_28 () {
  test "$(fibonacci 28)" = "`printf "1\n2\n3\n5\n8\n13\n21"`"
}

it_fibonacci_4_million () {
  test "$(fibonacci 4000000)" = \
       "`python -c "from audiolazy import z, impulse, takewhile; \
                    print '\n'.join( \
                      takewhile( \
                        lambda x: x <= 4000000, \
                        ((z ** -1) / (1 - z ** -1 - z ** -2)) \
                          (impulse()).skip(2)) \
                                      .map(int) \
                                      .map(str)) \
                   "`"
}


describe "even"

it_returns_list_of_even_numbers () {
  test "$(even `printf "2\n4"`)" = "`printf "2\n4"`"
}

it_filters_one_odd_number () {
  test "$(even `printf "2\n3\n4"`)" = "`printf "2\n4"`"
}

describe "sum_list"

it_sums_list_of_one_number () {
  test "$(sum_list "2")" = "2"
}

it_sums_list_of_two_number () {
  test "$(sum_list "2\n4")" = "6"
}