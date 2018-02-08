class InventoryItem < ActiveRecord::Base
  belongs_to :character
  belongs_to :map_tile
  belongs_to :shop
end
