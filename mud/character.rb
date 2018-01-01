class Character
  def initialize(attributes={})
    @name = attributes[:name]
    @race = attributes[:race]
    @age = attributes[:age]
  end

  def show_stats
    puts "Name: #{@name}
      \nRace: #{@race}
      \nAge: #{@age}"
  end
end

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
