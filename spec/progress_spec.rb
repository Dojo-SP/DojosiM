require 'spec_helper'

describe 'arithmetic_progression_detector' do
  it 'test for size=2 progressions' do
    expect(ap_detector [1, 2]).to be_true
  end
  it 'test for size=3 progressions' do
    expect(ap_detector [1, 2, 5]).to be_false
    expect(ap_detector [1, 2, 4]).to be_false
  end
end
