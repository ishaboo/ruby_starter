class Map
  def draw_map
    puts Rainbow("
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
                                  Necromancers").yellow
  end
end
