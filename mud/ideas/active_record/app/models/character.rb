class Character < ActiveRecord::Base
  has_many :inventory_items
  has_one :pet
end
