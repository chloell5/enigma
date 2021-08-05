require 'date'
require './lib/enigma'
require 'simplecov'
SimpleCov.start

RSpec.describe Enigma do
  before(:each) do
    @enigma = Enigma.new
  end
  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end
end
