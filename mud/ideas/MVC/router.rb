require_relative 'controller'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to this MUD\n Type 'look' to see where you are on the map: "

    while @running
      display_tasks
      action = gets.chomp
      route(action)
    end
  end

  private

  def route(action)
    case
    when action == 'n' then puts "north"
    when action == 's' then puts "south"
    when action == 'e' then puts "east"
    when action == 'w' then puts "west"
    when action == 'look'
      puts "You look around..."
    when action == 'stop' then stop
    else
      puts "Please enter a valid command"
  end

  def stop
    @running = false
  end

  def display_tasks
    puts "buncha stuff..."
    puts "Which direction are you going?"
  end
end
