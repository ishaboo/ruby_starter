require_relative 'view'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
    @view = View.new
  end

  def run
    # This whole block should be moved into the view
    # puts `clear`
    # puts " Welcome to this MUD\n Type 'look' to see where you are on the map: "
    # puts "The following commands will also work:"
    # puts "stats to see your character info"
    # puts "save to save your location for next time"
    # puts "n for north, s for south and so on"
    # puts "stop to stop the program"
    @view.start_game

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
    when action == "stats" then @controller.show_char_stats
    when action == 'look'
      puts "You look around..."
    when action == "save" then @controller.save_char_stats
    when action == 'stop' then stop
    else
      puts "Please enter a valid command"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts "\n"
    puts "Which direction are you going?"
  end
end
