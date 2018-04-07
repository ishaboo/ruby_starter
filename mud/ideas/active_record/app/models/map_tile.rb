class MapTile < ActiveRecord::Base
  has_one :shop
  has_many :inventory_items
  has_many :weapons
end
