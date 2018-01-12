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
    when action.length == 1 then @controller.move_char(action)
    when action == 'look'
      puts "You look around..."
    when action == 'stop' then stop
    else
      puts "Please enter a valid command"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts "buncha stuff..."
    puts "Which direction are you going?"
  end
end
