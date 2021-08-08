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
    message.split("").each do |char|
      if message.index(char).to_i % 4 == 0
        char = @shift.rotated_array_a[@shift.charset.index(char)]
        changed_message << char
      elsif message.index(char).to_i % 4 == 1
        char = @shift.rotated_array_b[@shift.charset.index(char)]
        changed_message << char
      elsif message.index(char).to_i % 4 == 2
        char = @shift.rotated_array_c[@shift.charset.index(char)]
        changed_message << char
      else
        char = @shift.rotated_array_d[@shift.charset.index(char)]
        changed_message << char
      end
    end
    changed_message.join
  end
end
