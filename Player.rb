class Player
  def hand
    return @hand
  end

  def to_s
    kind = {0=>'グー', 1=>'チョキ', 2=>'パー'}
    return kind[@hand]
  end

  def poi
    @hand = rand(3)
  end
end