require './modules/offsetable'
require 'simplecov'
SimpleCov.start

RSpec.describe Offsetable do
  let(:mock) { Class.new { extend Offsetable } }

  it 'creates offset with existing date' do
    expect(mock.create_offsets('103121')).to eq('0641')
    expect(mock.create_offsets(103_121)).to eq('0641')
  end

  it 'creates offset without existing date' do
    expect(mock.create_offsets).to eq((Time.now.strftime('%d%m%y').to_i**2).to_s[-4..-1])
  end

  it 'gives each individual offset' do
    mock.create_offsets('103121')

    expect(mock.get_offset(0)).to eq(0)
    expect(mock.get_offset(1)).to eq(6)
    expect(mock.get_offset(2)).to eq(4)
    expect(mock.get_offset(3)).to eq(1)
  end
end
