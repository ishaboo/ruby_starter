class Inventory < ActiveRecord::Base
  belongs_to :character
  belongs_to :bot
  has_many :inventory_items
  has_many :weapons
end
