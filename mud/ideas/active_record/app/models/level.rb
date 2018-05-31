class Level
  # level 1 --> 0 - 500 exp
  # level 2 --> 501 - 1100 exp
  # level 3 --> 1101 - 1800 exp

  def level_up(char)
    if char.exp > 500
      char.level = 2
    elsif char.exp > 1100
      char.level = 3
    end
  end
end
