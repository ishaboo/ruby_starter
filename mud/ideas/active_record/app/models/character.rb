class Character < ActiveRecord::Base
  has_one :inventory
  has_one :pet

  disciplines = ["thief", "mage", "warrior"]

  def has_discipline
    # Internal method that determines special skills and abilities
  end
end
