module Locate
  def Locate.bot(char)
    bot = Bot.where(x_coord: char.x_coord, y_coord: char.y_coord)
  end

  def Locate.corpse(char)
    bot = Locate.bot(char)
    unless bot.count == 0 || bot.first.alive == true
      return bot.first
    end
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
    corpse = Locate.corpse(char)
    if corpse
      puts "You are searching a dead #{corpse.race}..."
      unless corpse.inventory.inventory_items.empty? && corpse.inventory.weapons.empty?
        corpse.inventory.inventory_items.each do |item|
          puts "You find #{item.name}"
        end
        corpse.inventory.weapons.each do |weapon|
          puts "You find #{weapon.name}"
        end
      else
        puts "#{corpse.race} has nothing..."
      end
    end
  end

  def Item.find_items(char)
    stuff = []
    corpse = Item.find_corpse(char)
    stuff << items = corpse.inventory.inventory_items
    stuff << weapons = corpse.inventory.weapons
  end

  # this method should only deal with adding the actual item to character model
  def Item.get_item(char, stuff)
    stuff.each do |item|
      if item.first.class == Weapon.new.class
        char.inventory.weapons << item
      elsif item.first.class == InventoryItem.new.class
        char.inventory.inventory_items << item
      end
    end
  end
end
