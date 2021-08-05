module Dateable
  def create_offset
    date = Time.now.strftime('%d%m%y').to_i
    square = date ** 2
    @offset = offset = square.to_s[-4..-1].to_i
  end

  def get_offset_a
    @offset[0,2]
  end

  def get_offset_b
    @offset[1,2]
  end

  def get_offset_c
    @offset[2,2]
  end

  def get_offset_d
    @offset[3,2]
  end
end
