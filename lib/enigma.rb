require './shift'

class Enigma
  def encrypt(message, key = nil, date = nil)
    encrypted = Hash.new(0)
    @shift = Shift.new
    @shift.create_shifts(key, date)
    encrypted[:encryption] = iterate(message)
    encrypted[:key] = @shift.key
    encrypted[:date] = date
    encrypted
  end

  def decrypt(message, key = nil, date = nil)
    decrypted = Hash.new(0)
    @shift = Shift.new
    @shift.create_shifts(key, date)
    decrypted[:decryption] = inverse_iterate(message)
    decrypted[:key] = @shift.key
    decrypted[:date] = date
    decrypted
  end

  def iterate(message)
    changed_message = []
    i = 0
    message.each_char do |char|
      changed_message[i] = @shift.rotated_array_a[@shift.charset.index(char)] if i % 4 == 0
      changed_message[i] = @shift.rotated_array_b[@shift.charset.index(char)] if i % 4 == 1
      changed_message[i] = @shift.rotated_array_c[@shift.charset.index(char)] if i % 4 == 2
      changed_message[i] = @shift.rotated_array_d[@shift.charset.index(char)] if i % 4 == 3
      i += 1
    end
    changed_message.join
  end

  def inverse_iterate(message)
    changed_message = []
    i = 0
    message.each_char do |char|
      changed_message[i] = @shift.inverse_array_a[@shift.charset.index(char)] if i % 4 == 0
      changed_message[i] = @shift.inverse_array_b[@shift.charset.index(char)] if i % 4 == 1
      changed_message[i] = @shift.inverse_array_c[@shift.charset.index(char)] if i % 4 == 2
      changed_message[i] = @shift.inverse_array_d[@shift.charset.index(char)] if i % 4 == 3
      i += 1
    end
    changed_message.join
  end
end
