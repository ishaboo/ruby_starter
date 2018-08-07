class Character < ActiveRecord::Base
  has_one :inventory, dependent: :destroy
  has_one :pet, dependent: :destroy

  disciplines = ["thief", "mage", "warrior"]

  def has_discipline
    # Internal method that determines special skills and abilities
  end

  def belongs_to_class
    # classes could be warrior, thief, paladin, necromancer, mage
  end
end
