require 'spec_helper'

describe 'arithmetic_progression_detector' do
  it 'test for size=2 progressions' do
    expect(ap_detector [1, 2]).to be_true
  end 
end
