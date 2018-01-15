require_relative 'character'
require_relative 'view'

class Controller
  def initialize(map, character)
    @view = View.new
    @map = map
    @character = character
    # Need to come up with a condition to either create a new or load an existing character
    init_char
  end

  def create
    # Need to get some params to create a new MapTile
  end

  def show_inventory
    @view.view_inventory(@character)
  end

  def init_char
    @character.default_coords
  end

  def move_char(direction)
    case
    when direction == 'n'
      @character.coords[:y] += 1
    when direction == 's'
      @character.coords[:y] -= 1
    when direction == 'e'
      @character.coords[:x] += 1
    when direction == 'w'
      @character.coords[:x] -= 1
    end
    @character.read_map_info(@character.coords.values, @map)
  end

  def show_char_stats
    @view.view_stats(@character)
  end

  def save_char_stats
    @character.save(@character)
  end
end
