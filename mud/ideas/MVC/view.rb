class View
  def start_game
    puts `clear`
    puts " Welcome to this MUD\n Type 'look' to see where you are on the map: "
    puts "The following commands will also work:"
    puts "stats to see your character info"
    puts "save to save your location for next time"
    puts "n for north, s for south and so on"
    puts "stop to stop the program"
  end

  def show_map(map_tile_info)
    # map_tile_info could be an array
    puts map_tile_info
  end

  def view_stats(char_stats)
    # just an idea to display some info about the character
  end
end
