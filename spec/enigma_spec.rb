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

  xit 'encrypts with key and date' do
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq({
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      })
  end

  xit 'decrypts with key and date' do
    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq({
      decryption: "hello world",
      key: "02715",
      date: "040895"
      })
  end

  xit 'encrypts with just a key' do
    expect(@enigma.encrypt("hello world", "02715")).to eq({
      encryption: nil,#dunno, change this
      key: "02715",
      date: Time.now.strftime('%d%m%y')
      })
  end

  xit 'decrypts with just a key' do
    expect(@enigma.decrypt("hello world", "02715")).to eq({
      decryption: nil,#dunno, change this
      key: "02715",
      date: Time.now.strftime('%d%m%y')
      })
  end

  xit 'encrypts with just a key' do
    expect(@enigma.encrypt("hello world", "02715")).to eq({
      encryption: nil,#dunno, change this
      key: "02715",
      date: Time.now.strftime('%d%m%y')
      })
  end

  xit 'decrypts with just a key' do
    expect(@enigma.decrypt("hello world", "02715")).to eq({
      decryption: nil,#dunno, change this
      key: "02715",
      date: Time.now.strftime('%d%m%y')
      })
  end
end
