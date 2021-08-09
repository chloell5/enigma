require './modules/offsetable'
require './modules/keyable'

class Shift
  include Offsetable
  include Keyable

  attr_reader :charset

  def initialize
    @shifts = Hash.new(0)
    @charset = ("a".."z").to_a
    @charset << " "
  end
 
  def create_shifts(key, date)
    create_keys(key)
    create_offsets(date)
    @shifts[:A] = (get_offset(0) + get_keys[0])
    @shifts[:B] = (get_offset(1) + get_keys[1])
    @shifts[:C] = (get_offset(2) + get_keys[2])
    @shifts[:D] = (get_offset(3) + get_keys[3])
    create_rotated_arrays
    create_inverses
    @shifts
  end

  def create_rotated_arrays
    rotated_array_a
    rotated_array_b
    rotated_array_c
    rotated_array_d
  end

  def rotated_array_a
    @shifts_a = @charset.rotate(@shifts[:A])
  end

  def rotated_array_b
    @shifts_b = @charset.rotate(@shifts[:B])
  end

  def rotated_array_c
    @shifts_c = @charset.rotate(@shifts[:C])
  end

  def rotated_array_d
    @shifts_d = @charset.rotate(@shifts[:D])
  end

  def create_inverses
    inverse_array_a
    inverse_array_b
    inverse_array_c
    inverse_array_d
  end

  def inverse_array_a
    @inverse_a = @charset.rotate(0 - @shifts[:A])
  end

  def inverse_array_b
    @inverse_b = @charset.rotate(0 - @shifts[:B])
  end

  def inverse_array_c
    @inverse_c = @charset.rotate(0 - @shifts[:C])
  end

  def inverse_array_d
    @inverse_d = @charset.rotate(0 - @shifts[:D])
  end
end
