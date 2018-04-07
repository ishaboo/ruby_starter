class Weapon < ActiveRecord::Base
  belongs_to :character
  belongs_to :map_tile
  belongs_to :shop
  belongs_to :bot
end
