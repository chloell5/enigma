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
    expect(@shift.create_shifts("02715", "040895")).to eq({
      A: 3,
      B: 27,
      C: 73,
      D: 20
      })
  end

  it 'rotates arrays' do
    @shift.create_shifts("02715", "040895")

    expect(@shift.create_rotated_arrays).to eq(["u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t"])
  end
end
