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
            ans = gets.chomp
            if ans[0].downcase == 'y'
              if item.value <= mon
                # binding.pry
                coins = char.inventory_items.find_by(name: "Coins")
                coins.update(amount: coins.amount - item.value)
                register = tile.shop.inventory_items.find_by(name: "Coins")
                register.update(amount: register.amount + item.value)
                item.update(amount: item.amount - 1)
                x = InventoryItem.new(name: item.name, amount: 1, value: item.value)
                char.inventory_items << x # we could move line 54 here and drop x
                # puts "You could buy #{item.name}"
              else
                puts "You don't have enough money to buy #{item.name}"
              end
            else
              puts "...bye"
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
