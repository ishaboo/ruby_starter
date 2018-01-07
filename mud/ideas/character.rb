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


class Map
  attr_reader :info, :coords
  attr_writer :info

  def initialize(attributes={})
    @map_tiles = attributes[:map_csv]
  end

  def locate_character(coords)
    ## Does not work yet, as there is no DB to retrieve Data From
    # Should look something more like ––> info = Map.where(:coords = coords)
    # if coords[:x] && coords[:y]
    #   puts @info
    # end
  end
end

require 'csv'
# require_relative 'map'

class MapTile
  attr_reader :map_tiles
  attr_writer :csv_file

  def initialize(attributes={})
    # where to store my values
    @map_tiles = read_from_csv
    @csv_file = attributes[:csv_file]
    @coords = attributes[:coords]
    @info = attributes[:info]
    # Brain twister ****
    # @map_tiles = CSV.read(@csv_file).map do |tile|
    #   Map.new({:coords => {:x=>tile[0], :y=>tile[1]}})
    # end
  end

  def add_tile(new_tile)
    # This adds a new tile to the map
    @map_tiles << new_tile
    write_to_csv(@map_tiles)
  end

  def remove_tile(tile_id)
    # this removes a tile from the map.
    @map_tiles.delete_at(tile_id)
    write_to_csv(@map_tiles)
  end

  def read_from_csv
    tiles = CSV.read(@csv_file).map do |tile|
      Recipe.new(tile[0], tile[1])
    end
  end

  def all
    @map_tiles
  end

  def write_to_csv(map_tiles)
    CSV.open(@csv_file, "wb") do |csv|
      map_tiles.each do |tile|
        # Here, row is an array of columns
        csv << tile[0] + tile[1]
      end
    end
  end
end

class View
  def show_map(map_tile)
    # map_tile is an array
    map_tile.each do |tile|
      puts "#{tile[1]}"
    end
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
