require 'date'
require './lib/shift'
require 'simplecov'
SimpleCov.start

RSpec.describe Shift do
  before(:each) do
    @shift = Shift.new
  end

  it 'exists' do
    expect(@shift).to be_a(Shift)
  end

  it 'creates_shifts' do
    expect(@shift.create_shifts).to eq({
      A: 3,
      B: 27,
      C: 73,
      D: 20
      })
  end  
end
