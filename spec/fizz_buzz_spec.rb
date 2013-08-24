require 'spec_helper'

describe 'FizzBuzz' do
  describe '#fizz_buzz_for_one_number' do
    it 'for a regular number, returns the number itself' do
      expect(fizz_buzz_for_one_number 1).to eq("1")
      expect(fizz_buzz_for_one_number 2).to eq("2")
    end

    it 'for a multiple of 3, returns "Fizz"' do
      expect(fizz_buzz_for_one_number 3).to eq("Fizz")
      expect(fizz_buzz_for_one_number 6).to eq("Fizz")
      expect(fizz_buzz_for_one_number 9).to eq("Fizz")
    end
  end
end
