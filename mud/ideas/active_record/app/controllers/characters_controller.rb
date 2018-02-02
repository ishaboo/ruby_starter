# require_relative "../views/characters_view" --> already requiered in the run .rb file

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

  def update
    id = @view.ask_for("id").to_i
    character = Character.find(id)
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

  def move_char(direction)
    # Need a way to move the char on the map
    id = @view.ask_for_coords
    character = Character.find(id)
    character.coord_x # need some logic in here
    character.save
  end

  def show_inventory
    # should be done in the inventory_controller.rb
  end

  # NEED --> show_char_stats, read_map_info, show_inventory, save_char_stats, drop_item
end
