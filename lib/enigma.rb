require './modules/offsetable'
require './modules/keyable'

class Enigma
  include Offsetable
  include Keyable

  def encrypt(message, key = nil, date = nil)
    create_offsets(date)
    create_keys(key)
  end

  def decrypt(message, key = nil, date = nil)
    create_offsets(date)
    create_keys(key)
  end
end
