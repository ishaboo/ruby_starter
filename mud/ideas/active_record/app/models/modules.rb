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
  def search_corpse(char)

  end

  def find_corpse(char)

  end

  def find_items(char)

  end

  # this method should only deal with adding the actual item to character model
  def get_item(char, items={})
    weapons = []
    items = []
    items.each do |item, type|
      if type == 'weapon'
        char.inventory.weapons << item
      elsif type == 'item'
        char.inventory.items << item
      end
    end
  end
end
