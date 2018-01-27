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
      action = gets.chomp
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
      when action == "new" then @controller.create
      when action == "view" then @controller.view_char
      when action == 'load' then @controller.load_char
      when action == 'edit' then @controller.update_char
      when action == 'delete' then @controller.delete_char
      when action == 'stop' || action == 'exit' then stop
    else
      puts "Please enter a valid command"
    end
  end

  def stop
    @running = false
  end
end
