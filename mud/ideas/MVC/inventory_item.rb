class InventoryItem
  attr_reader :items, :amount

  def initialize(items, amount)
    @items = items
    @amount = amount
  end
end
