require "game.misspell"

until action == 'stop'
action = gets.chomp

  def initialize(character)
    @character = character
    init_char
  end
	 
  def route(action)
    case
    when action.length == 1 then @controller.move_char(action)
    when action == 'stats' then @controller.show_char_stats
    when action == 'look' then @controller.read_map_info
    when action == 'inv' then @controller.show_inventory
    when action == "save" then @controller.save_char_stats
    when action == 'stop' then stop
    else
      puts "Please enter a valid command"
    end
  def stop
    @running = false
  end

  def display_tasks
    @view.display_tasks
	end
end
end