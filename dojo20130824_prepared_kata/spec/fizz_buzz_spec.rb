require 'spec_helper'

describe 'FizzBuzz' do
  describe '#fizz_buzz_for_one_number' do
    it 'for a regular number, returns the number itself' do
      expect(fizz_buzz_for_one_number 1).to eq("1")
      expect(fizz_buzz_for_one_number 2).to eq("2")
      expect(fizz_buzz_for_one_number 4).to eq("4")
    end

    it 'for a multiple of 3, returns "Fizz"' do
      expect(fizz_buzz_for_one_number 3).to eq("Fizz")
      expect(fizz_buzz_for_one_number 6).to eq("Fizz")
      expect(fizz_buzz_for_one_number 9).to eq("Fizz")
    end

    it 'for a multiple of 5, returns "Buzz"' do
      expect(fizz_buzz_for_one_number 5).to eq("Buzz")
      expect(fizz_buzz_for_one_number 10).to eq("Buzz")
    end

    it 'for a multiple of 15, returns "FizzBuzz"' do
      expect(fizz_buzz_for_one_number 15).to eq("FizzBuzz")
      expect(fizz_buzz_for_one_number 30).to eq("FizzBuzz")
    end
  end

  describe '#fizz_buzz_for_numbers_less_or_equal_than' do
    it 'to 1, returns list with "1"' do
      expect(fizz_buzz_for_numbers_less_or_equal_than 1).to eq("1")
    end
  end
end
