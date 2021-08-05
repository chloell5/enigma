require './modules/dateable'

class Enigma
  include Dateable

  def encrypt(message, key = nil, date = nil)
    create_offsets(date)
  end

  def decrypt(message, key = nil, date = nil)
  end
end
