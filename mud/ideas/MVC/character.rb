require_relative 'view'
require_relative 'inventory'
require 'csv'

class Character
  attr_reader :coords, :name, :race, :inventory
  attr_writer :coords

  # def initialize(attributes={})
  def initialize(csv_file, inventory)
    @csv_file = csv_file
    @name = CSV.read(@csv_file).map do |attr|
      attr[1]
    end
    @race = CSV.read(@csv_file).map do |attr|
      attr[2]
    end
    @coords = CSV.read(@csv_file).map do |attr|
      attr[0]
    end
    # attributes[:race]
    # attributes[:name]
    # attributes[:coords]
    @view = View.new
    @inventory = inventory
  end

  def add_to_inventory

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
  end
end
