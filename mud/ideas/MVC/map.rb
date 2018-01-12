require 'csv'
require_relative 'maptile'

class Map
  attr_reader :maptiles
  attr_writer :info

  def initialize(csv_file)
    @csv_file = csv_file
    @maptiles = CSV.read(@csv_file).map do |map|
      MapTile.new(map[0], map[1])
    end
  end

  def add_tile(new_tile)
    @maptiles << new_tile
    write_to_csv(@map_tiles)
  end

  def remove_tile
  #   Not in use yet
  #   this removes a tile from the map.
  #   @map_tiles.delete_at(tile_id)
  #   write_to_csv(@map_tiles)
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
