module Dateable
  @date = Time.now.strftime(“%d%m%y”)

  def get_key_a
    @date[0,2]
  end

  def get_key_b
    @date[1,2]
  end

  def get_key_c
    @date[2,2]
  end

  def get_key_d
    @date[3,2]
  end
end
