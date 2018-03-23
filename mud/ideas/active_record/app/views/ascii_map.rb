class Map
  def draw_map
    puts "Map:
                               Fun
                              Store
                                ||
                                ||
                                ||
                    Bar and  General  Book
                     Tavern   Store   Store
                       ||       ||     ||
                       ||       ||     ||
                       ||       ||     ||
            ||         ||       ||     ||
            ||         ||       ||     ||
            ||         ||       ||     ||
            ||         ||       ||     ||
            ||     ____||_______||_____||
        Town Center____  _______  _____
            ||         ||       ||     ||
                       ||       ||     ||
                       ||       ||     ||
                   Town Square  ||     ||
                       ||       ||     ||
                       ||       ||     ||
                       ||       ||     ||
                       ||       ||     ||
                     Temple    Arena  Library
                                       ||
                                       ||
                                       ||
                                    City of
                                  Necromancers
    "
  end

  def map_names
    puts "Town Center, Roads, Town Square, Temple,\nBar and Tavern, Arena, Library, Genral Store, Fun Store\nCity of Necromancers, Book Store."
  end
end
