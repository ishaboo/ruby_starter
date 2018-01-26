require_relative '../models/character'
require_relative '../views/character_view'

class CharactersController
  def initialize
    @view = CharactersView.new
  end

  def create
    # Make a new Character
    name = @view.new_char("name")
    race = @view.new_char("race")
    character = Character.new(name: name, race: race)
    character.save
  end

  def view_char
    @view.view_char(@character)
  end

  def load_char
    char_id = @view.find_char
    @character = Character.find(char_id)
  end
end
