class Inventory
  def initialize(weapons, items, money)
    @weapons = weapons
    @items = items
    @money = money
  end

  def add_money(amount)
    @money += amount
  end
end

class Character
  def initialize(attributes={})
    @name = attributes[:name]
    @race = attributes[:race]
    @skills = attributes[:skills]
  end

  def change_name(name)
    @name = name
  end

  def change_race(race)
    @race = race
  end
end


# notes:
# https://stackoverflow.com/questions/4554325/what-is-the-most-efficient-way-to-initialize-a-class-in-ruby-with-different-para#4554397
