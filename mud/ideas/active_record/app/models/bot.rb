class Bot < ActiveRecord::Base
  has_many :inventory_items
  has_many :weapons
end
