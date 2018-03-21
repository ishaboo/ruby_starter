class InventoryController
  def initialize
    # setup
  end

  def setup
    puts "We need to create some inventory items to test with... "
    inventory = InventoryItem.new
    puts "Enter an item name: "
    name = gets.chomp
    inventory.name = name
    puts "Enter an amount:"
    amount = gets.chomp
    inventory.amount = amount
    puts "Which Character does this item belong to?"
    id = gets.chomp
    inventory.character = Character.find(id.to_i)
    inventory.save
  end

  def show_inventory(character)
    character.inventory_items.each do |item|
      puts "You have #{item.amount} " + Rainbow("#{item.name}").brown.bright
    end
  end

  def drop_item(character)
    print "Which item do you want to drop?\n> "
    item_name = gets.chomp
    character.inventory_items.each do |item|
      if item.name == item_name
        tile = find_tile(character)
        tile.inventory_items << item
        item.character_id = nil
        item.map_tile_id = tile.id
        item.save
      end
    end
    character.save
    puts "Your position has been saved!"
    character.reload
  end

  def grab_item(character)
    print "Which item do you want to grab?\n> "
    item_name = gets.chomp
    tile = find_tile(character)
    tile.inventory_items.each do |item|
      if item.name == item_name
        character.inventory_items << item
        item.character_id = character.id
        item.map_tile_id = nil
        item.save
      end
    end
    character.save
    puts "Your position has been saved!"
    character.reload
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
