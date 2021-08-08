require './modules/offsetable'
require './modules/keyable'

class Enigma
  include Offsetable
  include Keyable

  def encrypt(message, key = nil, date = nil)
    create_offsets(date)
  end

  def decrypt(message, key = nil, date = nil)
  end
end
