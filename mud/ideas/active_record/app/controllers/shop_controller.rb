class ShopController
  def check(char)
    tile = find_tile(char)
    if tile.shop
      puts "#{tile.shop.description}"
    else
      puts "There is no shop here..."
    end
  end

  private

  def find_tile(char)
    tiles = MapTile.all
    tiles.each do |tile|
      if tile.x_coord == char.x_coord && tile.y_coord == char.y_coord
        return tile
      end
    end
  end
end
