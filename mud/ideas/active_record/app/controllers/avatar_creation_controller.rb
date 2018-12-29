class AvatarCreationController
  def intro
    puts "
      Welcome to this awesome MUD.\n
      Before we can begin you will have to create a character.\n"
  end

  def create_char
    @char = Character.new
  end

  def give_attributes
    puts "Give your character a name:\n> "
    @char.name = Route.choice
    puts "What race is your character [Elf, Dwarf, Human, Orc]:\n> "
    @char.race = Route.choice
    puts "Does your character have a discipline [thief, mage, warrior]?:\n> "
    @char.discipline = Route.choice
    @char.alive = true
    @char.hitpoints = 25
    @char.strength = 8
    puts "This is what you picked so far:\n
      #{@char.name}\n
      #{@char.race}\n
      #{@char.discipline}\n
      #{@char.hitpoints}\n
      #{@char.strength}\n
      Do you want to save this character?"
    ans = Route.choice
    if ans == "yes"
      @char.save
    else
      puts "You just wasted your time..."
    end
  end
end
