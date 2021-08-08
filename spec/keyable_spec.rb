require './modules/keyable'
require 'simplecov'
SimpleCov.start

RSpec.describe Keyable do
  let(:mock) {Class.new {extend Keyable}}

  it 'creates key with user input' do
  end

  it 'creates key without user input' do
  end
end
