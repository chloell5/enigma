module Keyable
  def create_keys(key = nil)
    @key = key
    @key = rand(10**5).to_s.rjust(5, '0') if @key.nil?
    @key = @key.to_s.rjust(5, '0') if @key.is_a? Integer
    @key
  end

  def get_keys
    i = 0
    key_array = []
    4.times do
      key_array << @key[i, 2].to_i
      i += 1
    end
    key_array
  end
end
