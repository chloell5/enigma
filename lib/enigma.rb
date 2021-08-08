require './shift'

class Enigma
  def encrypt(message, key = nil, date = nil)
    shift = Shift.new
    shift.create_shifts(key, date)
  end

  def decrypt(message, key = nil, date = nil)
  end
end
