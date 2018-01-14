require_relative 'view'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
    @view = View.new
  end

  def run
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
    @view.display_tasks
  end
end
