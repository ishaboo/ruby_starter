class Character
  attr_reader :coords

  def initialize(attributes={})
    @name = attributes[:name]
    @race = attributes[:race]
    @coords = attributes[:coords]
  end

  def default_coords
    @coords = { :x => 1, :y => 1 }
  end

  def move(x, y)
    @coords[:x] += x
    @coords[:y] += y
  end
end
