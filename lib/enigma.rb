require './shift'

class Enigma
  def encrypt(message, key = nil, date = nil)
    encrypted_hash = Hash.new(0)
    @shift = Shift.new
    @shift.create_shifts(key, date)
    encrypted_hash[:encryption] = iterate(message)
    encrypted_hash[:key] = key
    encrypted_hash[:date] = date
    encrypted_hash
  end

  def decrypt(message, key = nil, date = nil)
  end

  def iterate(message)
    changed_message = []
    i = 0
    message.each_char do |char|
      if i % 4 == 0
        changed_message[i] = @shift.rotated_array_a[@shift.charset.index(char)]
      elsif i % 4 == 1
        changed_message[i] = @shift.rotated_array_b[@shift.charset.index(char)]
      elsif i % 4 == 2
        changed_message[i] = @shift.rotated_array_c[@shift.charset.index(char)]
      else
        changed_message[i] = @shift.rotated_array_d[@shift.charset.index(char)]
      end
      i += 1
    end
    changed_message.join
  end
end
