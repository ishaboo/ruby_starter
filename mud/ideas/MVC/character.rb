require_relative 'view'
# require_relative 'maptile'

class Character
  attr_reader :coords
  attr_writer :coords

  def initialize(attributes={})
    @name = attributes[:name]
    @race = attributes[:race]
    @coords = attributes[:coords]
    @view = View.new
  end

  def default_coords
    @coords = { :x => 0, :y => 0 }
  end

  def read_map_info(coord_given, map)
    info = ''
    map.maptiles.each do |tile|
      if tile.coords == "#{coord_given[0]} #{coord_given[1]}"
        info = tile.info
      end
    end
    puts @view.show_map(info)
    # puts info
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
