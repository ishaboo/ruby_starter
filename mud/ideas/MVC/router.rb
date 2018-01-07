class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to this MUD\n Type 'look' to see where you are on the map: "

    while @running
      display_tasks
    end
  end

  def display_tasks
    puts "buncha stuff..."
  end
end
