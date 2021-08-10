module Offsetable
  def create_offsets(date = nil)
    date = Time.now.strftime('%d%m%y') if date.nil?
    date = date.to_i
    square  = date**2
    @offset = square.to_s[-4..-1]
  end

  def get_offset(shift)
    @offset[shift].to_i
  end
end
