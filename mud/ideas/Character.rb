class Character
  attr_reader :coords

  def initialize(attributes={})
    @name = attributes[:name]
    @race = attributes[:race]
    @coords = attributes[:coords]
  end

  def default_coords
    @coords = { :x => 1, :y => 1 }
  end

  def move(x, y)
    @coords[:x] += x
    @coords[:y] += y
  end
end


class Map
  attr_reader :info, :coords
  attr_writer :info

  def initialize(attributes={})
    @coords = attributes[:coords]
    @info = attributes[:info]
  end

  def locate_character(coords)
    ## Does not work yet, as there is no DB to retrieve Data From
    # Should look something more like --> info = Map.where(:coords = coords)
    if coords[:x] && coords[:y]
      puts @info
    end
  end
end


# Seed?
a = Map.new({:coords => {:x=>3, :y=>5}})
b = Character.new
a.info = "Success"
a.locate_character(b.coords)
