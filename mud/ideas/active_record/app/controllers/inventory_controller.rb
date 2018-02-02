class InventoryController
  def initialize
    setup
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

  def show_inventory

  end
end
