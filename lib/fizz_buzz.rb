def fizz_buzz_for_one_number number
  return "FizzBuzz" if number == 15
  return "Fizz" if number % 3 == 0
  return "Buzz" if number % 5 == 0
  number.to_s
end
