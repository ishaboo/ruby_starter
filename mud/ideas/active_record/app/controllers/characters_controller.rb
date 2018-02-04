class CharactersController
  def initialize
    @view = CharactersView.new
  end

  def index
    # list all characters ... just for debugging purposes
    list = Character.all
    @view.list_all(list)
  end

  def load
    id = @view.ask_for("your character's id:")
    character = Character.find(id)
  end

  def create
    name = @view.ask_for("name")
    race = @view.ask_for("race")
    character = Character.new(name: name, race: race)
    character.save
  end

  def update(character)
    puts "Change your character's name and race"
    character.name = @view.ask_for(:name)
    character.race = @view.ask_for(:race)
    character.save
    @view.give_msg("Update succesful!")
  end

  def destroy
    id = @view.ask_for("id").to_i
    character = Character.find(id)
    character.destroy
    @view.give_msg("You just destroyed that ID!!!")
  end

  def move_char(char, direction)
    case
    when direction == 'n'
      char.y_coord += 1
    when direction == 's'
      char.y_coord -= 1
    when direction == 'e'
      char.x_coord += 1
    when direction == 'w'
      char.x_coord -= 1
    end
    # Need a method to do 'look'
  end

  def show_pos(char)
    puts "You are at: #{char.x_coord} and #{char.y_coord}"
  end
  # NEED --> show_char_stats, read_map_info, show_inventory, save_char_stats, drop_item
end
