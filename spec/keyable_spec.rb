require './modules/keyable'
require 'simplecov'
SimpleCov.start

RSpec.describe Keyable do
  let(:mock) {Class.new {extend Keyable}}

  xit 'creates key with user input' do
  end

  xit 'creates key without user input' do
  end

  xit 'gives each individual key' do
  end
end
