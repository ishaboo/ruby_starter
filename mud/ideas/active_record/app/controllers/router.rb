class Router
  def initialize
    @char_controller = CharactersController.new
    @inv_controller = InventoryController.new
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
    when action.length == 1 then @char_controller.move_char(action)
    when action == 'new' then @char_controller.create
    when action == 'delete' then @char_controller.destroy
    when action == 'inv' then @inv_controller.show_inventory
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
