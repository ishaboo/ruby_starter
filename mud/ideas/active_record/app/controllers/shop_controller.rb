# require "pry-byebug"

class ShopController
  def check(char)
    tile = find_tile(char)
    if tile.shop
      puts "#{tile.shop.description}"
    else
      puts "There is no shop here..."
    end
  end

  def list_items(char)
    tile = find_tile(char)
     if tile.shop
      puts "This shop has the following items:"
      if tile.shop.inventory_items
        tile.shop.inventory_items.each do |item|
          puts "#{item.name} price: #{item.value} coins"
        end
      end
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
