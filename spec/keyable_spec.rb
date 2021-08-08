require './modules/keyable'
require 'simplecov'
SimpleCov.start

RSpec.describe Keyable do
  let(:mock) {Class.new {extend Keyable}}

  it 'creates key with user input' do
    expect(mock.create_keys(2715)).to eq("02715")
    expect(mock.create_keys("02715")).to eq("02715")
  end

  it 'creates key without user input' do
    expect(mock.create_keys()).to be_a(String)
    expect(mock.create_keys().length).to eq(5)
  end

  it 'gives each individual key' do
    mock.create_keys("02715")
    expect(mock.get_keys).to eq([2, 27, 71, 15])
  end
end
