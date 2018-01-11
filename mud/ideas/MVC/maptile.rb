class MapTile
  attr_reader :coords :info

  def initialize(coords, info)
    @coords = coords
    @info = info
  end

  # def read_from_csv
  #   tiles = CSV.read(@csv_file).map do |tile|
  #     self.new(tile[0], tile[1])
  #   end
  # end

  # def all
  #   @map_tiles
  # end
end
