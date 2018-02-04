class Router
  def initialize
    @char_controller = CharactersController.new
    @inv_controller = InventoryController.new
    @map_controller = MapController.new
    @view = CharactersView.new
    @character = 0
    @running = true
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
    when action.length == 1 then @char_controller.move_char(@character, action)
    when action == 'new' then @char_controller.create
    when action == 'load' then @character = @char_controller.load
    when action == 'delete' then @char_controller.destroy
    when action == 'inv' then @inv_controller.show_inventory(@character)
    when action == 'look' then @map_controller.read_title(@character.x_coord, @character.y_coord)
    when action == 'pos' then @char_controller.show_pos(@character)
    when action == 'list' then @char_controller.index
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
