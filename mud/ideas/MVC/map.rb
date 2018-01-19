require 'csv'
require_relative 'maptile'

class Map
  attr_reader :maptiles

  def initialize(csv_file)
    @csv_file = csv_file
    @maptiles = CSV.read(@csv_file).map do |map|
      MapTile.new(map[0], map[1])
    end
  end

  def add_tile(new_tile)
    @maptiles << new_tile
    write_to_csv(@maptiles)
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
        if tile.items == {}
          csv << [tile.coords] + [tile.info]
        else
          csv << [tile.coords] + [tile.info] + [tile.items]
        end
      end
    end
  end
end
