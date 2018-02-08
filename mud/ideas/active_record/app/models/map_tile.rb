class MapTile < ActiveRecord::Base
  has_one :shop
  has_many :inventory_items
end
