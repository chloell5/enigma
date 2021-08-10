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

  it 'encrypts with key and date' do
    expect(@enigma.encrypt('hello world', '02715', '040895')).to eq({
                                                      encryption: 'keder ohulw',
                                                      key: '02715',
                                                      date: '040895'
                                                    })
  end

  it 'decrypts with key and date' do
    expect(@enigma.decrypt('keder ohulw', '02715', '040895')).to eq({
                                                      decryption: 'hello world',
                                                      key: '02715',
                                                      date: '040895'
                                                    })
  end

  it 'encrypts with just a key' do
    encrypted = @enigma.encrypt('hello world', '02715')

    expect((@enigma.decrypt(encrypted[:encryption], '02715'))[:decryption]).to eq('hello world')
    expect((@enigma.decrypt(encrypted[:encryption], '02715'))[:key]).to eq('02715')
  end

  it 'decrypts with just a key' do
    encrypted = @enigma.encrypt('hello world', '02715')
    expect(@enigma.decrypt(encrypted[:encryption], '02715')).to eq({
                                                     decryption: 'hello world',
                                                     key: '02715',
                                                     date: nil
                                                   })
  end

  it 'encrypts with no key or date' do
    encrypted = @enigma.encrypt('hello world')

    expect((@enigma.decrypt(encrypted[:encryption], encrypted[:key]))[:decryption]).to eq('hello world')
  end
end
