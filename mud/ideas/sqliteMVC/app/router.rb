require_relative 'banner'

class Router
  def initialize
    @controller = CharactersController.new
    @running = true
    @banner = Banner.new
  end

  def run
    @banner.greeting
    while @running
      print_menu
      action = gets.chomp.to_i
      route(action)
    end
  end

  def print_menu
    possibilities = ["Which direction are you going?", "What do you want to do?", "Please enter a command..."]
    puts "\n"
    puts possibilities.sample
  end

  def route(action)
    case
      when action.length == 1 then @controller.move_char(action)
      when action == 'stats' then @controller.show_char_stats
      when action == 'look' then @controller.read_map_info
      when action == 'inv' then @controller.show_inventory
      when action == 'save' then @controller.save_char_stats
      when action == 'drop' then @controller.drop_item
      when action == 'stop' || action == 'exit' then stop
    else
      puts "Please enter a valid command"
    end
  end

  def stop
    @running = false
  end
end
