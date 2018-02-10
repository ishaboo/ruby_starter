require "pry-byebug"

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
      else
        puts "...nothing at the moment"
      end
    else
      puts "There is no shop here..."
    end
  end

  def buy(char)
    tile = find_tile(char)
    mon = 0
    char.inventory_items.each do |item|
      if item.name == "Coins"
        mon = item.amount
      end
    end
    if tile.shop
      print "What would you like to buy?\n> "
      wants = gets.chomp
      if tile.shop.inventory_items
        tile.shop.inventory_items.each do |item|
          if item.name == wants
            # binding.pry
            print "#{item.name} costs #{item.value}\nWould you like to buy #{item.name}?(Y/n)\n> "
            # need to catch some input here
            if item.value <= mon
              puts "You could buy #{item.name}"
            else
              puts "You don't have enough money to buy #{item.name}"
            end
          end
        end
      end
    else
      puts "You cannot buy anything here..."
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
