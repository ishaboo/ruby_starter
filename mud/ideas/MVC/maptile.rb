class MapTile
  attr_reader :coords, :info, :items
  attr_writer :items

  def initialize(coords, info)
    @coords = coords
    @info = info
    @items = Hash.new(0)
  end

  def all
    # currently not in use
  end
end
