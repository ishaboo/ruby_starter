class InventoryItem < ActiveRecord::Base
  belongs_to :inventory
  belongs_to :map_tile
  belongs_to :shop
  belongs_to :bot
end
