class Store
  def initialize(items={})
    @items = items
  end

  def sale
    puts "What would you like to buy?"
    item = gets.chomp
    price = @items[item]
    puts "That costs #{price} Gold"
    # Need to check if character has the money to buy the item and if so deduct
    # the money from the character and add the item to the character's inventory
  end
end
