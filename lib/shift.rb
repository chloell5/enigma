require './modules/offsetable'
require './modules/keyable'

class Shift
  include Offsetable
  include Keyable

  def initialize
    @shifts = Hash.new(0)
  end

  def create_shifts(key, date)
    create_keys(key)
    create_offsets(date)
    @shifts[:A] = (get_offset(0) + get_keys[0])
    @shifts[:B] = (get_offset(1) + get_keys[1])
    @shifts[:C] = (get_offset(2) + get_keys[2])
    @shifts[:D] = (get_offset(3) + get_keys[3])
    @shifts
  end
end
