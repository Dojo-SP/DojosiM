def fizz_buzz_for_one_number number
  return "FizzBuzz" if number % 15 == 0
  return "Fizz" if number % 3 == 0
  return "Buzz" if number % 5 == 0
  number.to_s
end

def fizz_buzz_for_numbers_less_or_equal_than number
  "1"
end
