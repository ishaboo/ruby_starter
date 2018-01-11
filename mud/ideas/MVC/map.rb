require 'csv'
require_relative 'maptile'

class Map
  attr_reader :maptiles
  attr_writer :info

  def initialize(csv_file)
    @csv_file = csv_file
    @map_tiles = CSV.read(@csv_file).map do |map|
      MapTile.new(map[0], map[1])
    end
  end

  def add_tile(new_tile)
    @map_tiles << new_tile
    write_to_csv(@map_tiles)
  end

  def locate_character(coords)
    ## Does not work yet, as there is no DB to retrieve Data From
    # Should look something more like ––> info = Map.where(:coords = coords)
    # if coords[:x] && coords[:y]
    #   puts @info
    # end
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
