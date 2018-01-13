require_relative 'view'
# require_relative 'maptile'
require 'csv'

class Character
  attr_reader :coords, :name, :race
  attr_writer :coords

  # def initialize(attributes={})
  def initialize(csv_file)
    @csv_file = csv_file
    @name = CSV.read(@csv_file).map do |attr|
      attr[1]
    end
    # attributes[:name]
    @race = CSV.read(@csv_file).map do |attr|
      attr[2]
    end
    # attributes[:race]
    @coords = CSV.read(@csv_file).map do |attr|
      attr[0]
    end
    # attributes[:coords]
    @view = View.new
  end

  def default_coords
    # @coords = { :x => 0, :y => 0 }
    @coords = {
      :x => self.coords[0].split(' ')[0].to_i,
      :y => self.coords[0].split(' ')[1].to_i
    }
  end

  def save(char)
    coords = "#{char.coords[:x]} #{char.coords[:y]}"
    CSV.open(@csv_file, "wb") do |csv|
      csv << [coords] + char.name + char.race
    end
  end

  def read_map_info(coord_given, map)
    info = ''
    map.maptiles.each do |tile|
      if tile.coords == "#{coord_given[0]} #{coord_given[1]}"
        info = tile.info
      end
    end
    @view.show_map(info)
    # puts info
  end
end

# Seed?
# a = Map.new({:coords => {:x=>3, :y=>5}})
# b = Character.new
# a.info = "Success"
# a.locate_character(b.coords)
# tiles = [
#   [["0 0"],["town center"]],
#   [["0 1"],["temple"]],
#   [["1 1"],["market"]],
#   [["1 2"],["tavern"]]
# ]
# a.write_to_csv(tiles)
