class Character
  attr_reader :coords

  def initialize(attributes={})
    @name = attributes[:name]
    @race = attributes[:race]
    @coords = attributes[:coords]
  end

  def default_coords
    @coords = { :x => 0, :y => 0 }
  end

  def move(x, y)
    @coords[:x] += x
    @coords[:y] += y
    read_map_info(@coords)
  end

  def read_map_info(coords)
    map = MapTile.all
    info = map.info(where: map[0] == coords)
  end
end

# Seed?
# a = Map.new({:coords => {:x=>3, :y=>5}})
# b = Character.new
# a.info = "Success"
# a.locate_character(b.coords)
# tiles = [
#   [["0 0"],["town center"]],
#   [["0 1"],["temple"]],
#   [["1 1"],["market"]],
#   [["1 2"],["tavern"]]
# ]
# a.write_to_csv(tiles)
