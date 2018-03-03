class FightView
  def view
    puts Rainbow("In order to engage in a fight you should consider the following:\n
    make sure there is a bot on the maptile that you are in, this can be\n
    found with look more or the look again command. When there is a bot,\n
    you can engage him with the fight command").green
  end
end
