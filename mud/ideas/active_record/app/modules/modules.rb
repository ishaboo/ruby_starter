module Locate
  def Locate.test(stuff)
    puts "#{stuff} always works!"
  end

  def Locate.show_coords(model)
    Rainbow("#{model.name} is at: #{model.x_coord} and #{model.y_coord}").yellow.bright
  end
end

module Fight
  def Fight.test(stuff)
    puts "#{stuff.upcase} gives you a fight!"
  end
end

module Route
  def Route.test(stuff)
    puts "#{stuff} should route all your stuff!"
  end
end

module Item
  def Item.search_corpse(char)

  end

  def Item.find_corpse(char)
    bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)
    unless bot.count == 0 || bot.first.alive == true
      return bot.first
    end
  end

  def Item.find_items(char)
    stuff = []
    corpse = Item.find_corpse(char)
    stuff << items = corpse.inventory.inventory_items
    stuff << weapons = corpse.inventory.weapons
  end

  # this method should only deal with adding the actual item to character model
  def Item.get_item(char, inventory)
    inventory.each do |item, type|
      if type == 'weapon'
        char.inventory.weapons << item
      elsif type == 'item'
        char.inventory.inventory_items << item
      end
    end
  end
end