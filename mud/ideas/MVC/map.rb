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
