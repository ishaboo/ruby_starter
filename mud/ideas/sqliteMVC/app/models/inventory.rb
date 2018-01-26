class Inventory
  attr_reader :items

  def initialize(attributes={})
    @items = attributes[:items]
      # InventoryItem.new(item[0], item[1])
  end
end
