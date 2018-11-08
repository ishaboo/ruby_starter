class Character < ActiveRecord::Base
  has_one :inventory, dependent: :destroy
  has_one :pet, dependent: :destroy

  disciplines = ["thief", "mage", "warrior"]

  def use_discipline
    # Internal method that determines special skills and abilities
    case self.discipline
    when 'thief'
      # we need to add stealth or movement here to give an advantage to
    when 'mage'
      # need some kinda magic ability
    when 'warrior'
      # maybe a more fighting orientated skill would be better
      self.strength += 2
    end
  end

  def belongs_to_class
    # classes could be warrior, thief, paladin, necromancer, mage
  end
end
