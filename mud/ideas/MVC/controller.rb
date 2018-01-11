require_relative 'character'
require_relative 'map'
require_relative 'maptile'
require_relative 'view'

class Controller
  def initialize(map)
    @map = map
    @view = View.new
    @character = Character.new
  end

  def show
    @view.print_maptile(@map.show_tile)
  end

  def create
    # Need to get some params to create a new MapTile
  end

  def locate_character(coords)
    ## Does not work yet, as there is no DB to retrieve Data From
    # Should look something more like ––> info = Map.where(:coords = coords)
    # if coords[:x] && coords[:y]
    #   puts @info
    # end
  end
end
