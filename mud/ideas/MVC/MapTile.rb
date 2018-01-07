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
      self.new(tile[0], tile[1])
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
