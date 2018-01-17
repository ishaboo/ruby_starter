class MapTile
  attr_reader :coords, :info

  def initialize(coords, info)
    @coords = coords
    @info = info
    @items = Hash.new(0)
  end

  def all

  end
end
