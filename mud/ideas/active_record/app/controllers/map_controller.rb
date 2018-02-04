class MapController
  def initialize
    @tiles = MapTile.all
  end
  def read_title(x, y)
    @tiles.each do |tile|
      if tile.x_coord == x && tile.y_coord == y
        puts tile.name
      end
    end
  end
end
