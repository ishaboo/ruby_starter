require "pry-byebug"

class PetController
  def initialize
    # Let's try this with one single Pet
    @pet = Pet.first
    @pets = Pet.all
  end

  def moves
    # some random motion to make pet move around
    runs = (0..4).to_a.sample
    offset = (1..2).to_a.sample
    if runs.even?
      @pet.y_coord += runs
      @pet.x_coord += offset
    else
      @pet.y_coord -= offset
      @pet.x_coord -= runs
    end
    @pet.save
  end

  def announce(character)
    @pets.each do |pet|
      pet.reload
      if pet.x_coord == character.x_coord && pet.y_coord == character.y_coord
        puts "You see... #{pet.description}"
      end
    end
  end

  def returns_home
    @pet.update_attributes(y_coord: 0, x_coord: 0)
  end

  def call(char)
    if char.pet
      char.pet.update(x_coord: char.x_coord)
      char.pet.update(y_coord: char.y_coord)
      # This is really fucky and not necessary... read up on this
      char.pet.reload
    end
  end
end
