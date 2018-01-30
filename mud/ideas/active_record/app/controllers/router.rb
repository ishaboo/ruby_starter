class Router
  def initialize
    @controller = CharactersController.new
    @running = true
    @view = CharactersView.new
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
    when action == 'new' then @controller.create
    when action == 'stop' || action == 'exit' then stop
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
