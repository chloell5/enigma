module Dateable
  def create_offsets(date = nil)
    date    = Time.now.strftime('%d%m%y').to_i if date.nil?
    square  = date ** 2
    @offset = square.to_s[-4..-1]
  end

  def get_offset(shift)
    @offset[shift]
  end
end
