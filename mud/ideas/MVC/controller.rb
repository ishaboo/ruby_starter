require_relative 'character'
require_relative 'map'
require_relative 'maptile'
require_relative 'view'

class Controller
  def initialize(map)
    @map = map
    @view = View.new
  end

  def show
    @view.print_maptile(@map.show_tile)
  end

  def create
    # Need to get some params to create a new MapTile
  end
end
