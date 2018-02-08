class Shop < ActiveRecord::Base
  belongs_to :map_tile
  has_many :inventory_items
end
