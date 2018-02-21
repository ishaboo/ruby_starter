class PetController
  def initialize
    # Let's try this with one single Pet
    @pet = Pet.first
  end

  def moves
    # some random motion to make pet move around
    runs = (1..4).to_a.sample
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

  def returns_home
    @pet.update_attributes(y_coord: 0, x_coord: 0)
  end
end
