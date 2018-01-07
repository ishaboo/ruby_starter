class View
  def show_map(map_tile)
    # map_tile is an array
    map_tile.each do |tile|
      puts "#{tile[1]}"
    end
  end
end
