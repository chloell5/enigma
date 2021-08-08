require 'date'
require './lib/enigma'
require 'simplecov'
SimpleCov.start

RSpec.describe Shift do
  before(:each) do
    @shift = Shift.new
  end

  it 'exists' do
    expect(@shift).to be_a(Shift)
  end
end
