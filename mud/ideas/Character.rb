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


class Map
  attr_reader :info, :coords
  attr_writer :info

  def initialize(attributes={})
    @coords = attributes[:coords]
    @info = attributes[:info]
  end

  def locate_character(coords)
    ## Does not work yet, as there is no DB to retrieve Data From
    # Should look something more like --> info = Map.where(:coords = coords)
    if coords[:x] && coords[:y]
      puts @info
    end
  end
end

require 'csv'
# require_relative 'map'

class MapTile
  attr_reader :map_tiles

  def initialize(csv_file)
    # where to store my values
    # @map_tiles = []
    @csv_file = csv_file
    # Brain twister ****
    @map_tiles = CSV.read(@csv_file).map do |tile|
      Map.new({tile[0], tile[1]})
    end
  end

  def add_tile(new_tile)
    # This adds a new tile to the map
    @map_tiles << new_tile
    write_to_csv(@map_tiles)
  end

  def remove_recipe(tile_id)
    # this removes a tile from the map.
    @map_tiles.delete_at(tile_id)
    write_to_csv(@map_tiles)
  end

  def all
    @map_tiles
  end

  def write_to_csv(map_tiles)
    CSV.open(@csv_file, "wb") do |csv|
      map_tiles.each do |tile|
        # Here, row is an array of columns
        csv << [tile.name, tile.description]
      end
    end
  end
end



# Seed?
a = Map.new({:coords => {:x=>3, :y=>5}})
b = Character.new
a.info = "Success"
a.locate_character(b.coords)
