class Bot < ActiveRecord::Base
  has_many :inventory_items
end
