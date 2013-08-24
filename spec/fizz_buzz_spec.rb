require 'spec_helper'

describe 'FizzBuzz' do
  describe '#fizz_buzz_for_one_number' do
    it 'for a regular number, returns the number itself' do
      expect(fizz_buzz_for_one_number 1).to eq(1)
    end
  end
end
